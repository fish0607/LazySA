# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import admin

from django import forms
from django.db import models

# Register your models here.
from main.models import SysLog
from main.models import SaLog

# from assets.models import GroupInfo
class ContactSaLog(admin.ModelAdmin):
    list_display = ('LogId', 'LoginUser', 'ActionUser', 'HostIP', 'StartTime', 'EndTime', 'Cmd', 'Result')
    search_fields = ['LoginUser', 'Cmd']
    # 过滤
    list_filter = ['LoginUser']
    # 可编辑
    # list_editable = ['hostname','port','password']
    # 显示条数
    list_per_page = 10
    list_max_show_all = 10
    # 显示总数
    # show_full_result_count = False

class ContactSysLog(admin.ModelAdmin):
    list_display = ('LogId', 'User', 'Time', 'Operation', 'Result')
    search_fields = ['User', 'Operation']
    list_filter = ['User', 'Operation']
    list_per_page = 15

admin.site.register(SysLog, ContactSysLog)
admin.site.register(SaLog, ContactSaLog)