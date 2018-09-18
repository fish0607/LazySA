#-*- coding: utf-8 -*-
#!/usr/bin/python

import os
from os import path
import time, datetime


TmpDir = path.join(path.dirname(path.abspath(path.dirname(__file__))), 'temp')
if os.path.exists(TmpDir):
    print("临时目录: %s" % TmpDir)
else:
    print("临时目录: %s 不存在,程序自动创建" % TmpDir)
    try:
        os.mkdir(TmpDir)
        print("临时目录: %s 创建成功" % TmpDir)
    except Exception as err:
        print("临时目录: %s ,自动创建失败: %s " % (TmpDir, err))

def CreateHostFile():
    DayTime = time.strftime("%Y%m%d-%H%M%S", time.localtime())
    HostFile = os.path.join(TmpDir,DayTime + ".list")
    return HostFile

HostFile = CreateHostFile()
print(HostFile)

def AnsibleCmd(HostFile,Cmd):
    print(HostFile)
    print(Cmd)
