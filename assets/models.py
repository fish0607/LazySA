# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.utils.html import format_html

# Create your models here.
class IDCInfo(models.Model):
	idc_id = models.AutoField(primary_key=True, verbose_name='ID')
	idc_name = models.CharField(null=True,max_length=50, verbose_name='IDC Name')
	login_url = models.URLField(blank=True,null=True,max_length=100, verbose_name='URL')
	account = models.CharField(blank=True,null=True,max_length=100, verbose_name='账号')
	password = models.CharField(blank=True,null=True,max_length=100, verbose_name='密码')
	provider = models.CharField(blank=True,null=True,max_length=100, verbose_name='提供商')
	linkman = models.CharField(blank=True,null=True,max_length=100, verbose_name='联系人')
	notes = models.CharField(blank=True,null=True,max_length=100, verbose_name='备注')

	class Meta:
		verbose_name = 'IDC 信息'
		verbose_name_plural = 'IDC 信息'

	def __str__(self):
		return self.idc_name

'''
class GroupInfo(models.Model):
	GroupID = models.AutoField(primary_key=True, verbose_name='ID')
	GroupName = models.CharField(max_length=50, verbose_name='Group Name')
	GroupNotes = models.CharField(max_length=100, verbose_name='备注')

	class Meta:
		verbose_name = '分组管理'
		verbose_name_plural = '分组管理'

	def __str__(self):
		return self.GroupName
'''

class HostInfo(models.Model):
	host_id = models.AutoField(primary_key=True,verbose_name='主机ID')
	hostname = models.CharField(blank=True,null=True, max_length=50, verbose_name='主机名称')
	idc_name = models.ForeignKey(IDCInfo, blank=True, null=True, on_delete=models.CASCADE, verbose_name='机房类型')
	public_ip = models.GenericIPAddressField(blank=True, null=True, verbose_name='公网IP')
	private_ip = models.GenericIPAddressField(blank=True, null=True, default='127.0.0.1', verbose_name='内网IP')
	cpu = models.CharField(blank=True, null=True, max_length=50, default='4核', verbose_name='CPU')
	men = models.CharField(blank=True, null=True, max_length=50, default='8G', verbose_name='内存')
	disk = models.CharField(blank=True, null=True, max_length=10,default='40G 100G', verbose_name='硬盘大小')
	account = models.CharField(blank=True, null=True, max_length=100, default='root', verbose_name='账号')
	port = models.CharField(blank=True,null=True, max_length=100, default='22', verbose_name='端口')
	password = models.CharField(blank=True, null=True, max_length=100, default='Passw0rd', verbose_name='密码')
	webcode = models.CharField(blank=True, null=True, max_length=50,default='-', verbose_name='WEB验证码')
	webid = models.CharField(blank=True, null=True, max_length=50,default='-', verbose_name='实例ID')
	system = models.CharField(blank=True, null=True, max_length=100,default='Cent OS 6.9 x64',verbose_name='操作系统')
	area = models.CharField(blank=True, null=True, max_length=100,verbose_name='所在地区')
	group = models.CharField(blank=True, null=True, max_length=300,verbose_name='所属组')
	notes = models.CharField(blank=True, null=True, max_length=500,verbose_name='备注')
	cost = models.CharField(blank=True, null=True, max_length=500,default='-', verbose_name='费用')

	class Meta:
		verbose_name = '服务器信息'
		verbose_name_plural = '服务器信息'

	def getHostIP(self):
		return format_html(self.public_ip + '<br>' +  self.private_ip)
	getHostIP.short_description = "IP"

	def getHostConfig(self):
		return format_html(self.cpu + '' +  self.men + '<br>' + self.disk)
	getHostConfig.short_description = "配置"

	def getHostNotes(self):
		return format_html(self.notes + '<br>' + self.cost)
	getHostNotes.short_description = "备注"

	def getHostWeb(self):
		return format_html(self.webcode + '<br>' + self.webid)
	getHostWeb.short_description = "备注2"

	def __str__(self):
		return self.public_ip

class ProjectInfo(models.Model):
	ServiceType = (
		(0, '系统服务'),
		(1, '项目服务'),
	)
	ProjectID = models.AutoField(primary_key=True,verbose_name='项目ID')
	Type = models.IntegerField(choices=ServiceType, default='0', verbose_name='类型')
	ProjectHost = models.ForeignKey(HostInfo, blank=True, null=True, on_delete=models.SET_NULL, verbose_name='Host')
	ProjectName = models.CharField(blank=True, null=True, max_length=50, verbose_name='名称')
	ServiceDir = models.CharField(blank=True, null=True, max_length=200, verbose_name='安装目录')
	ServiceShell = models.CharField(blank=True, null=True, max_length=100, verbose_name='服务脚本')
	ControlShell = models.CharField(blank=True, null=True, max_length=100, verbose_name='控制脚本')
	Group = models.CharField(blank=True, null=True, max_length=100, verbose_name='分组')
	Notes = models.CharField(blank=True, null=True, max_length=100, verbose_name='备注')

	class Meta:
		verbose_name = '项目信息'
		verbose_name_plural = '项目信息'

	def __str__(self):
		return self.ProjectName

class ProjectLog(models.Model):
	LogId = models.AutoField(primary_key=True,verbose_name='LogID')
	User = models.CharField(blank=True,null=True, max_length=50, verbose_name='User')
	Time = models.DateTimeField(auto_now_add=True)
	Operation = models.CharField(max_length=500)
	Result = models.TextField(blank=True, null=True, verbose_name='res')
