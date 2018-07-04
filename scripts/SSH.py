#-*- coding: utf-8 -*-
#!/usr/bin/python

from os import path
import paramiko
import time
import os

from main.SaveLog import SaveSaLog

def sshKey(HostInfoDict):
    pkey = os.path.expanduser(HostInfoDict['key'])

    s = paramiko.SSHClient()
    s.load_system_host_keys()
    s.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    key = paramiko.RSAKey.from_private_key_file(pkey)

    StartTime = time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
    Result = []
    try:
        s.connect(HostInfoDict['public_ip'], HostInfoDict['port'], HostInfoDict['account'], pkey=key)
        stdin, stdout, stderr = s.exec_command(HostInfoDict['shell'])
        result = stdout.read(),stderr.read()
        if any(result):
            #cmd_result = result[0] if result[0] else result[1]
            Result.append(result[0] if result[0] else result[1])
        else:
            Result.append('execution has no output!Error')
        s.close()
    except Exception as err:
        Result.append(err)
        print(err)
    EndTime = time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
    print('Result:',Result)
    SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime, HostInfoDict['cmd'], Result)

def sshPassword(HostInfoDict):
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    try:
        StartTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
        ssh.connect(hostname=HostInfoDict['public_ip'], port=HostInfoDict['port'], username=HostInfoDict['account'], password=HostInfoDict['password'])
        stdin, stdout, stderr = ssh.exec_command(HostInfoDict['shell'])
        Result = stdout.read().decode()
        err = stderr.read()
        print(stdin, Result, err)
        EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
        ssh.close()
        try:
            print('保存日志到数据库')
            SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
                  HostInfoDict['shell'], Result)
        except Exception as err:
            print("日志保存失败 %s" % err)
    except Exception as err:
        print('执行出错: %s' % err)

