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
def account_login(request):
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

def account_logout(request):
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
    hostlist = HostInfo.objects.all()
    return render(request, "main/files.html",locals())
    #return render(request, "404.html", locals())

@login_required()
def ExecuteOrder(request):
    hostlist = HostInfo.objects.all()
    return render(request, "main/order.html",locals())
    #return render(request, "404.html", locals())

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
