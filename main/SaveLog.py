#-*- coding: utf-8 -*-
#!/usr/bin/python

from main.models import SaLog
from main.models import SysLog

def SaveSysLog(User,Operation,Result):
    InfoSQL = SysLog(User=User,Operation=Operation,Result=Result)
    try:
        InfoSQL.save()
    except Exception as err:
        print(err)

def SaveSaLog(LoginUser,ActionUser,HostIP,StartTime,EndTime,Cmd,Result):
    InfoSQL = SaLog(LoginUser=LoginUser, ActionUser=ActionUser, HostIP=HostIP, StartTime=StartTime, EndTime=EndTime, Cmd=Cmd, Result=Result)
    try:
        InfoSQL.save()
    except Exception as err:
        print(err)
