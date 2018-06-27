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

from assets.models import IDCInfo,HostInfo

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