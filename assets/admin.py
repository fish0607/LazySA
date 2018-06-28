# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from django import forms
from django.db import models

# Register your models here.
from assets.models import IDCInfo
from assets.models import HostInfo
from assets.models import ProjectInfo
#from assets.models import GroupInfo

class ContactIDC(admin.ModelAdmin):
    list_display = ('idc_id','idc_name','login_url','account','password','linkman','notes')
    #list_display_links = ['login_url']
    list_per_page = 15

class ContactHost(admin.ModelAdmin):
    #显示
    #list_display = ('host_id','hostname','getHostIP','getHostConfig','account','port','password','system','idc_name','area','group','getHostNotes','getHostWeb')
    list_display = ('host_id', 'hostname', 'getHostIP', 'getHostConfig', 'account', 'port', 'password', 'system', 'idc_name', 'area', 'group', 'notes')
    # list_display_links = ['host_id']
    #搜索
    search_fields = ['public_ip','private_ip']
    #过滤
    list_filter = ['group','idc_name','area']
    #可编辑
    #list_editable = ['hostname','port','password']
    #显示条数
    list_per_page = 10
    list_max_show_all = 10
    #显示总数
    #show_full_result_count = False
  
'''
class HostFrom(forms.ModelForm):
    option = forms.ModelChoiceField(label=u'下拉框',queryset=IDCInfo.objects.all()[0])
'''
'''
class ContactGroup(admin.ModelAdmin):
    list_display = ('GroupID','GroupName','GroupNotes')
    list_per_page = 15
'''


class ContactProject(admin.ModelAdmin):
    list_display = ('ProjectID','ProjectHost','ProjectName','ProjectService','Group','Notes')
    #list_display_links = ['login_url']
    list_per_page = 15

admin.site.register(IDCInfo,ContactIDC)
admin.site.register(HostInfo,ContactHost)
#admin.site.register(GroupInfo,ContactGroup)
admin.site.register(ProjectInfo,ContactProject)