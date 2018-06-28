# -*- coding: utf-8 -*-
from django.shortcuts import render

# Create your views here.

from django.contrib import auth
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse,HttpResponseRedirect,request
import json,simplejson
from  django.core.serializers import serialize
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage

from assets.models import IDCInfo
from assets.models import HostInfo

from main.models import SysLog
from main.models import SaLog

def index(request):
    return render(request, 'signin.html', locals())

@csrf_exempt
def AccountLogin(request):
    if request.method == "POST":
        try:
            #username = request.POST['username']
            #password = request.POST['passwd']
            user = auth.authenticate(username=request.POST['username'], password=request.POST['passwd'])
            if user and user.is_active:
                auth.login(request, user)
                print('用户 %s 登陆成功' % request.POST['username'])
                SaveSysLog(request.user, '登陆系统', '成功')
                resp = {'accessGranted':'1','opts':'OK'}
                return HttpResponse(json.dumps(resp), content_type='application/json')
                #return HttpResponseRedirect('/main/home/')
            else:
                print('用户 %s 登陆失败' % request.POST['username'])
                SaveSysLog(request.user, '登陆系统', '失败')
                resp = {}
                #resp = {'accessGranted': '', 'opts': 'fail'}
                return HttpResponse(json.dumps(resp), content_type='application/json')
                #return render(request, 'signin.html', {'login_err': '登陆失败,请确认用户名密码后重新登陆。'})
        except Exception as err:
            print("ERROR: %s" % err)
            SaveSysLog(request.user, '登陆系统失败', err)
            return render(request, 'signin.html', {'login_err': '登陆失败,请确认用户名密码后重新登陆。'})
    else:
        return render(request,'signin.html')

def AccountLogOut(request):
    print("用户 %s 退出成功 " % request.user)
    SaveSysLog(request.user, '退出系统', '成功')
    auth.logout(request)
    return render(request,"signin.html")

@login_required()
def home(request):
    IdcCount = IDCInfo.objects.count()
    HostCount = HostInfo.objects.count()
    return render(request,'index.html',locals())

@login_required()
def TransferFiles(request):
    SrcHost = request.POST.get('SrcHost')
    SrcFile = request.POST.get('SrcFile')
    DstHost = request.POST.getlist('DstHost')
    DstFile = request.POST.get('DstFile')

    HostList = HostInfo.objects.all()

    if SrcHost and SrcFile and DstHost and DstFile:
        from main.SSH import sftpKey, sftpPassword
        print("传输文件，源主机:" ,SrcHost)
        print("传输文件，源文件:", SrcFile)
        print("传输文件，目标主机:", DstHost)
        print("传输文件，目标文件:", DstFile)
        if SrcHost == '127.0.0.1':
            print("从管理机上传输文件：%s" % SrcFile)
            for host in DstHost:
                print("生成传输文件服务器信息 %s" % host)
                try:
                    Info = HostInfo.objects.get(public_ip=host)
                    HostInfoDict = {'LoginUser': request.user, 'public_ip': Info.public_ip, 'account': Info.account, 'port': Info.port,
                                    'password': Info.password, 'SrcFile':SrcFile, 'DstFile':DstFile}
                    print(HostInfoDict)
                except Exception as err:
                    print(err)
        else:
            print("从服务器 %s 上传输文件：%s" %(SrcHost, SrcFile))
            SrcHostInfo = HostInfo.objects.get(public_ip=SrcHost)
            TmpFileName = '/tmp/'+ SrcFile.split('/')[-1]
            print("文件临时存放：%s" %TmpFileName)
            HostInfoDict = {'LoginUser': request.user, 'public_ip': SrcHostInfo.public_ip, 'account': SrcHostInfo.account, 'port': SrcHostInfo.port,
                                  'password': SrcHostInfo.password, 'SrcFile':SrcFile, 'DstFile':TmpFileName}
            for host in DstHost:
                print("生成传输文件服务器信息 %s" % host)
                try:
                    Info = HostInfo.objects.get(public_ip=host)
                    HostInfoDict = {'LoginUser': request.user, 'public_ip': Info.public_ip, 'account': Info.account, 'port': Info.port,
                                    'password': Info.password, 'SrcFile':TmpFileName, 'DstFile':DstFile}
                    print(HostInfoDict)
                except Exception as err:
                    print(err)
            print("清除临时文件 %s" % TmpFileName)
            '''
            import os
            try:
                os.remove(TmpFileName)
            except Exception as err:
                print("删除文件 %s 错误：%s" %(TmpFileName, err))
            '''

    return render(request, "main/files.html",locals())

@login_required()
def ExecuteOrder(request):
    HostList = request.POST.getlist('HostList')
    shell = request.POST.get('shell')

    hostlist = HostInfo.objects.all()

    if HostList and shell:
        from main.SSH import sshKey, sshPassword
        print("执行命令，服务器列表: %s,命令: %s" %(HostList,shell))
        for host in  HostList:
            Info = HostInfo.objects.get(public_ip=host)
            HostInfoDict = {'LoginUser': request.user, 'public_ip': Info.public_ip, 'account': Info.account, 'port': Info.port,
                            'password': Info.password, 'shell': shell}
            print(HostInfoDict)
    return render(request, "main/order.html",locals())

@login_required()
def Monitoring(request):
    #return render(request, "main/monitor.html",locals())
    return render(request, "404.html", locals())

@login_required()
def ShowSysLog(request):
    paginator = Paginator(SysLog.objects.order_by("-LogId"), 15)
    page = request.GET.get('page')
    try:
        contacts = paginator.page(page)
    except PageNotAnInteger:
        contacts = paginator.page(1)
    except EmptyPage:
        contacts = paginator.page(paginator.num_pages)
    return render(request, "main/syslog.html",locals())

@login_required()
def ShowSaLog(request):
    paginator = Paginator(SaLog.objects.order_by("-LogId"), 15)
    page = request.GET.get('page')
    try:
        contacts = paginator.page(page)
    except PageNotAnInteger:
        contacts = paginator.page(1)
    except EmptyPage:
        contacts = paginator.page(paginator.num_pages)
    return render(request, "main/salog.html",locals())

def SaveSysLog(User,Operation,Result):
    sql_info = SysLog(User=User,Operation=Operation,Result=Result)
    try:
        sql_info.save()
    except Exception as err:
        print(err)
