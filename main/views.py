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
from assets.models import ProjectInfo

from main.models import SysLog
from main.models import SaLog

from main.SaveLog import SaveSysLog

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
    ProjectCount = ProjectInfo.objects.count()
    return render(request,'index.html',locals())

@login_required()
def TransferFiles(request):
    SrcHost = request.POST.get('SrcHost')
    SrcFile = request.POST.get('SrcFile')
    DestHost = request.POST.getlist('DestHost')
    DestFile = request.POST.get('DestFile')

    HostList = HostInfo.objects.all()

    if SrcHost and SrcFile and DestHost and DestFile:
        from scripts.SFTP import sftpPut, sftpGet
        print("传输文件，源主机:" ,SrcHost)
        print("传输文件，源文件:", SrcFile)
        print("传输文件，目标主机:", DestHost)
        print("传输文件，目标文件:", DestFile)
        if SrcHost == '127.0.0.1':
            print("从管理机上传输文件：%s" % SrcFile)
            for host in DestHost:
                print("生成传输文件服务器信息 %s" % host)
                try:
                    Info = HostInfo.objects.get(public_ip=host)
                    HostInfoDict = {'LoginUser': request.user, 'public_ip': Info.public_ip, 'account': Info.account, 'port': Info.port,
                                    'password': Info.password, 'SrcFile':SrcFile.strip(), 'DestFile':DestFile.strip()}
                    print(HostInfoDict)
                    try:
                        sftpPut(HostInfoDict)
                    except Exception as err:
                        print("文件传输失败："% err)
                except Exception as err:
                    print("生成传输文件服务器 %s 信息失败 %s" %(host, err))
        else:
            # 临时目录
            import os
            from os import path
            TmpDir = path.join(path.dirname(path.abspath(path.dirname(__file__))), 'temp')
            if os.path.exists(TmpDir):
                print("临时目录: %s" % TmpDir)
            else:
                print("临时目录: %s 不存在,程序自动创建" % TmpDir)
                try:
                    os.mkdir(TmpDir)
                    print("临时目录: %s 创建成功" % TmpDir)
                except Exception as err:
                    print("临时目录: %s ,自动创建失败: %s " % (TmpDir, err))
            TmpFileName = os.path.join(TmpDir, SrcFile.split('/')[-1].strip())
            print("从服务器 %s 下载文件：%s 至临时目录文件：%s" %(SrcHost, SrcFile, TmpFileName))
            SrcHostInfo = HostInfo.objects.get(public_ip=SrcHost)
            HostInfoDict = {'LoginUser': request.user, 'public_ip': SrcHostInfo.public_ip, 'account': SrcHostInfo.account, 'port': SrcHostInfo.port,
                                  'password': SrcHostInfo.password, 'SrcFile':SrcFile.strip(), 'DestFile':TmpFileName.strip()}
            try:
                sftpGet(HostInfoDict)
                print("从服务器 %s 下载文件：%s 至临时目录文件 %s 完成" %(SrcHost, SrcFile, TmpFileName))
                print("传输文件 %s 至目标主机 %s 文件 %s" %(TmpFileName, DestHost, DestFile))
                for host in DestHost:
                    print("生成传输文件服务器信息 %s" % host)
                    try:
                        Info = HostInfo.objects.get(public_ip=host)
                        HostInfoDict = {'LoginUser': request.user, 'public_ip': Info.public_ip, 'account': Info.account, 'port': Info.port,
                                        'password': Info.password, 'SrcFile': TmpFileName, 'DestFile': DestFile.strip()}
                        sftpPut(HostInfoDict)
                    except Exception as err:
                        print("生成传输文件服务器信息失败 %s" % err)
                print("清除临时文件 %s" % TmpFileName)
                try:
                    os.remove(TmpFileName)
                except Exception as err:
                    print("删除文件 %s 错误：%s" %(TmpFileName, err))
            except Exception as err:
                print("下载文件 %s 至临时目录 %s 出错：%s" %(SrcFile, TmpFileName, err))
    return render(request, "main/files.html",locals())

@login_required()
def ExecuteOrder(request):
    HostList = request.POST.getlist('HostList')
    shell = request.POST.get('shell')

    HtmlHostList = HostInfo.objects.all()

    if HostList and shell:
        from scripts.SSH import sshOrder
        import paramiko
        import multiprocessing
        from multiprocessing import pool
        print("执行命令，服务器列表: %s,命令: %s" %(HostList,shell))
        p = multiprocessing.Pool(processes=10)
        for host in  HostList:
            if host == "127.0.0.1" or host == "localhost":
                print("本机执行 %s" % shell)
                import  subprocess
                import time
                from main.SaveLog import SaveSaLog
                StartTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
                try:
                    prog = subprocess.Popen(shell, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                    Result = prog.communicate()
                    print(Result)
                    EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
                    try:
                        print('保存日志到数据库')
                        SaveSaLog(request.user, 'root', host, StartTime, EndTime, shell, Result)
                    except Exception as err:
                        print("日志保存失败 %s" % err)
                except Exception as err:
                    print("ERROR: %s" % err)
                    EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
                    SaveSaLog(request.user, 'root', host, StartTime, EndTime, shell, err)
            else:
                Info = HostInfo.objects.get(public_ip=host)
                HostInfoDict = {'LoginUser': request.user, 'public_ip': Info.public_ip, 'account': Info.account, 'port': Info.port,
                                'password': Info.password, 'shell': shell}
                print(HostInfoDict)
                print("加入进程")
                #p.apply_async(sshPassword, (HostInfoDict, ))
                #sshOrder(HostInfoDict)
                sshOrder(HostInfoDict)
        #p.close()
        #p.join()
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
