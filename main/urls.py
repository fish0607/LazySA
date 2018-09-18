from django.conf.urls import include, url
from django.contrib import admin
from main import views

urlpatterns = [
	url(r'^index/$', views.index, name='index'),
	url(r'^login/$', views.AccountLogin, name='Login'),
	url(r'^logout/$', views.AccountLogOut, name='Logout'),
	url(r'^home/$', views.home, name='Home'),
	url(r'^files/$', views.TransferFiles, name='TransferFiles'),
	url(r'^shell/$', views.ExecuteOrder, name='ExecuteOrder'),
	url(r'^monitor/$', views.Monitoring, name='SysMonitor'),
	url(r'^syslog/$', views.ShowSysLog, name='ShowSysLog'),
	url(r'^opslog/$', views.ShowSaLog, name='ShowOpsLog')
]
