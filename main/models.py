# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from django.utils.html import format_html

# Create your models here.

class SysLog(models.Model):
    LogId = models.AutoField(primary_key=True,verbose_name='LogID')
    User = models.CharField(blank=True,null=True, max_length=50, verbose_name='用户')
    Time = models.DateTimeField(auto_now_add=True, verbose_name='时间')
    Operation = models.CharField(max_length=500, verbose_name='操作')
    Result = models.TextField(blank=True, null=True, verbose_name='结果')

    class Meta:
        verbose_name = '系统日志'
        verbose_name_plural = '系统日志'

    def __str__(self):
        return self.LogId

class SaLog(models.Model):
    LogId = models.AutoField(primary_key=True,verbose_name='LogID')
    LoginUser = models.CharField(blank=True,null=True, max_length=50, verbose_name='登陆用户')
    ActionUser =  models.CharField(blank=True,null=True, max_length=50, verbose_name='操作用户')
    HostIP = models.GenericIPAddressField(blank=True, null=True, verbose_name='主机IP')
    StartTime = models.CharField(blank=True,null=True, max_length=50, verbose_name='开始时间')
    EndTime = models.CharField(blank=True,null=True, max_length=50, verbose_name='结束时间')
    Cmd = models.CharField(blank=True, null=True, max_length=500, verbose_name='执行操作')
    Result = models.TextField(blank=True, null=True, verbose_name='执行结果')

    class Meta:
        verbose_name = '操作日志'
        verbose_name_plural = '操作日志'

    '''
    def GetRes(self):
        return format_html('<p>' + self.Result + linebreaksbr '</p>')
    GetRes.short_description = "Result"
    '''
    def __str__(self):
        return self.LogId

