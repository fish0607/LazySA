# -*- coding: utf-8 -*-
from __future__ import unicode_literals

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
from assets.models import ProjectLog

from scripts.SSH import sshOrder

# Create your views here.
@login_required()
def idc_list (request):
    list = IDCInfo.objects.all()
    paginator = Paginator(list, 15)
    page = request.GET.get('page')
    try:
        contacts = paginator.page(page)
    except PageNotAnInteger:
        contacts = paginator.page(1)
    except EmptyPage:
        contacts = paginator.page(paginator.num_pages)
    return  render(request,'assets/idc.html',locals())

@login_required()
def host_list (request):
    list = HostInfo.objects.all()
    paginator = Paginator(list, 10)
    page = request.GET.get('page')
    try:
        contacts = paginator.page(page)
    except PageNotAnInteger:
        contacts = paginator.page(1)
    except EmptyPage:
        contacts = paginator.page(paginator.num_pages)
    return  render(request,'assets/host.html',locals())

@login_required()
def ProjectList (request):
    list = ProjectInfo.objects.all()
    paginator = Paginator(list, 15)
    page = request.GET.get('page')

    if request.GET.get('start'):
        GetProjectInfo = ProjectInfo.objects.get(ProjectID=request.GET.get('start'))
        Order = GetProjectInfo.ServiceShell + ' ' + 'start'
        Operation = "开启项目服务：%s \nID：%s \n服务器：%s \n执行对应命令：%s" % (GetProjectInfo.ProjectName, GetProjectInfo.ProjectID, GetProjectInfo.ProjectHost, Order)
        print(Operation)
        HostInfoDict = {'LoginUser': request.user, 'public_ip': GetProjectInfo.ProjectHost.public_ip, 'account': GetProjectInfo.ProjectHost.account,
                        'port': GetProjectInfo.ProjectHost.port, 'password': GetProjectInfo.ProjectHost.password, 'shell': Order}
        print(HostInfoDict)
        try:
            sshOrder(HostInfoDict)
            try:
                SaveProjectLog('root', Operation, '成功')
            except Exception as err:
                print("日志保存失败：%s" % err)
        except Exception as err:
            print("操作失败：%s" %err)
            SaveProjectLog(request.user, Operation, err)
    if request.GET.get('close'):
        GetProjectInfo = ProjectInfo.objects.get(ProjectID=request.GET.get('close'))
        Order = GetProjectInfo.ServiceShell + ' ' + 'stop'
        Operation = "关闭项目服务：%s \nID：%s \n服务器：%s \n执行对应命令：%s" % (GetProjectInfo.ProjectName, GetProjectInfo.ProjectID, GetProjectInfo.ProjectHost, Order)
        print(Operation)
        HostInfoDict = {'LoginUser': request.user, 'public_ip': GetProjectInfo.ProjectHost.public_ip, 'account': GetProjectInfo.ProjectHost.account,
                        'port': GetProjectInfo.ProjectHost.port, 'password': GetProjectInfo.ProjectHost.password, 'shell': Order}
        print(HostInfoDict)
        try:
            sshOrder(HostInfoDict)
            try:
                SaveProjectLog('root', Operation, '成功')
            except Exception as err:
                print("日志保存失败：%s" % err)
        except Exception as err:
            print("操作失败：%s" %err)
            SaveProjectLog(request.user, Operation, err)
    if request.GET.get('restart'):
        GetProjectInfo = ProjectInfo.objects.get(ProjectID=request.GET.get('restart'))
        Order = GetProjectInfo.ServiceShell + ' ' + 'restart'
        Operation = "重启项目服务：%s \nID：%s \n服务器：%s \n执行对应命令：%s" % (GetProjectInfo.ProjectName, GetProjectInfo.ProjectID, GetProjectInfo.ProjectHost, Order)
        print(Operation)
        HostInfoDict = {'LoginUser': request.user, 'public_ip': GetProjectInfo.ProjectHost.public_ip, 'account': GetProjectInfo.ProjectHost.account,
                        'port': GetProjectInfo.ProjectHost.port, 'password': GetProjectInfo.ProjectHost.password, 'shell': Order}
        print(HostInfoDict)
        try:
            sshOrder(HostInfoDict)
            try:
                SaveProjectLog('root', Operation, '成功')
            except Exception as err:
                print("日志保存失败：%s" % err)
        except Exception as err:
            print("操作失败：%s" %err)
            SaveProjectLog(request.user, Operation, err)

    try:
        contacts = paginator.page(page)
    except PageNotAnInteger:
        contacts = paginator.page(1)
    except EmptyPage:
        contacts = paginator.page(paginator.num_pages)
    return  render(request,'assets/projectlist.html',locals())

@login_required()
def ProjectUpdata (request):
    list = ProjectInfo.objects.all()
    paginator = Paginator(list, 15)
    page = request.GET.get('page')

    if request.GET.get('backup'):
        GetProjectInfo = ProjectInfo.objects.get(ProjectID=request.GET.get('backup'))
        Order = GetProjectInfo.ControlShell + ' ' + 'backup'
        Operation = "备份项目服务：%s \nID：%s \n服务器：%s \n执行对应命令：%s" % (GetProjectInfo.ProjectName, GetProjectInfo.ProjectID, GetProjectInfo.ProjectHost, Order)
        print(Operation)
        HostInfoDict = {'LoginUser': request.user, 'public_ip': GetProjectInfo.ProjectHost.public_ip, 'account': GetProjectInfo.ProjectHost.account,
                        'port': GetProjectInfo.ProjectHost.port, 'password': GetProjectInfo.ProjectHost.password, 'shell': Order}
        print(HostInfoDict)
        try:
            sshOrder(HostInfoDict)
            try:
                SaveProjectLog('root', Operation, '成功')
            except Exception as err:
                print("日志保存失败：%s" % err)
        except Exception as err:
            print("操作失败：%s" %err)
            SaveProjectLog(request.user, Operation, err)
    if request.GET.get('updata'):
        GetProjectInfo = ProjectInfo.objects.get(ProjectID=request.GET.get('updata'))
        Order = GetProjectInfo.ControlShell + ' ' + 'updata'
        Operation = "更新项目服务：%s \nID：%s \n服务器：%s \n执行对应命令：%s" % (GetProjectInfo.ProjectName, GetProjectInfo.ProjectID, GetProjectInfo.ProjectHost, Order)
        print(Operation)
        HostInfoDict = {'LoginUser': request.user, 'public_ip': GetProjectInfo.ProjectHost.public_ip, 'account': GetProjectInfo.ProjectHost.account,
                        'port': GetProjectInfo.ProjectHost.port, 'password': GetProjectInfo.ProjectHost.password, 'shell': Order}
        print(HostInfoDict)
        try:
            sshOrder(HostInfoDict)
            try:
                SaveProjectLog('root', Operation, '成功')
            except Exception as err:
                print("日志保存失败：%s" % err)
        except Exception as err:
            print("操作失败：%s" %err)
            SaveProjectLog(request.user, Operation, err)
    if request.GET.get('rollback'):
        GetProjectInfo = ProjectInfo.objects.get(ProjectID=request.GET.get('rollback'))
        Order = GetProjectInfo.ControlShell + ' ' + 'rollback'
        Operation = "回滚项目服务：%s \nID：%s \n服务器：%s \n执行对应命令：%s" % (GetProjectInfo.ProjectName, GetProjectInfo.ProjectID, GetProjectInfo.ProjectHost, Order)
        print(Operation)
        HostInfoDict = {'LoginUser': request.user, 'public_ip': GetProjectInfo.ProjectHost.public_ip, 'account': GetProjectInfo.ProjectHost.account,
                        'port': GetProjectInfo.ProjectHost.port, 'password': GetProjectInfo.ProjectHost.password, 'shell': Order}
        print(HostInfoDict)
        try:
            sshOrder(HostInfoDict)
            try:
                SaveProjectLog('root', Operation, '成功')
            except Exception as err:
                print("日志保存失败：%s" % err)
        except Exception as err:
            print("操作失败：%s" %err)
            SaveProjectLog(request.user, Operation, err)

    try:
        contacts = paginator.page(page)
    except PageNotAnInteger:
        contacts = paginator.page(1)
    except EmptyPage:
        contacts = paginator.page(paginator.num_pages)
    return  render(request,'assets/projectupdata.html',locals())

@login_required()
def ShowProjectLog(request):
    list = ProjectLog.objects.all()
    paginator = Paginator(ProjectLog.objects.order_by("-LogId"), 15)
    page = request.GET.get('page')
    try:
        contacts = paginator.page(page)
    except PageNotAnInteger:
        contacts = paginator.page(1)
    except EmptyPage:
        contacts = paginator.page(paginator.num_pages)
    return render(request, "assets/projectlog.html", locals())

def SaveProjectLog(User,Operation,Result):
    InfoSQL = ProjectLog(User=User,Operation=Operation,Result=Result)
    try:
        InfoSQL.save()
    except Exception as err:
        print("SysLog 日志保存失败：" % err)