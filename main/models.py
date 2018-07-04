# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from django.utils.html import format_html

# Create your models here.

class SysLog(models.Model):
    LogId = models.AutoField(primary_key=True,verbose_name='LogID')
    User = models.CharField(blank=True,null=True, max_length=50, verbose_name='User')
    Time = models.DateTimeField(auto_now_add=True)
    Operation = models.CharField(max_length=500)
    Result = models.TextField(blank=True, null=True, verbose_name='res')

class SaLog(models.Model):
    LogId = models.AutoField(primary_key=True,verbose_name='LogID')
    LoginUser = models.CharField(blank=True,null=True, max_length=50, verbose_name='User')
    ActionUser =  models.CharField(blank=True,null=True, max_length=50, verbose_name='Action User')
    HostIP = models.GenericIPAddressField(blank=True, null=True, verbose_name='Host IP')
    StartTime = models.CharField(blank=True,null=True, max_length=50, verbose_name='Start Time')
    EndTime = models.CharField(blank=True,null=True, max_length=50, verbose_name='End Time')
    Cmd = models.CharField(blank=True, null=True, max_length=500, verbose_name='action')
    Result = models.TextField(blank=True, null=True, verbose_name='res')
