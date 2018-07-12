#-*- coding: utf-8 -*-
#!/usr/bin/python

#多进程使用需要加载 django
#否则会出现错误：AppRegistryNotReady: Apps aren't loaded yet
import django
django.setup()

from os import path
import paramiko
import time
import os

from main.SaveLog import SaveSaLog

def sshKey(HostInfoDict):
    pkey = os.path.expanduser(HostInfoDict['key'])

    ssh = paramiko.SSHClient()
    ssh.load_system_host_keys()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    key = paramiko.RSAKey.from_private_key_file(pkey)

    StartTime = time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
    Result = []
    try:
        ssh.connect(HostInfoDict['public_ip'], HostInfoDict['port'], HostInfoDict['account'], pkey=key)
        stdin, stdout, stderr = ssh.exec_command(HostInfoDict['shell'])
        result = stdout.read(),stderr.read()
        if any(result):
            #cmd_result = result[0] if result[0] else result[1]
            Result.append(result[0] if result[0] else result[1])
        else:
            Result.append('execution has no output!Error')
        ssh.close()
    except Exception as err:
        Result.append(err)
        print(err)
    EndTime = time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
    print('Result:',Result)
    SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
              HostInfoDict['shell'], Result)

def sshPassword(HostInfoDict):
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    StartTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
    Result = []
    try:
        print("Passwor 连接服务器 %s" % HostInfoDict['public_ip'])
        ssh.connect(hostname=HostInfoDict['public_ip'], port=HostInfoDict['port'], username=HostInfoDict['account'], password=HostInfoDict['password'])
        stdin, stdout, stderr = ssh.exec_command(HostInfoDict['shell'])
        result = stdout.read(), stderr.read()
        if any(result):
            # cmd_result = result[0] if result[0] else result[1]
            Result.append(result[0] if result[0] else result[1])
        else:
            Result.append('execution has no output!Error')
        ssh.close()
        try:
            print('保存日志到数据库')
            SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
                  HostInfoDict['shell'], Result)
        except Exception as err:
            print("日志保存失败 %s" % err)
    except Exception as err:
        Result.append(err)
        print('执行出错: %s' % err)

def sshOrder(HostInfoDict):
    import paramiko
    import os
    from main.SaveLog import SaveSaLog
    KeyFile = os.path.join('~', '.ssh', 'id_rsa')
    print("尝试使用Key连接服务器 %s" % HostInfoDict['public_ip'])
    StartTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
    pkey = os.path.expanduser(KeyFile)
    ssh = paramiko.SSHClient()
    ssh.load_system_host_keys()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    try:
        key = paramiko.RSAKey.from_private_key_file(pkey)
        ssh.connect(HostInfoDict['public_ip'], HostInfoDict['port'], HostInfoDict['account'], pkey=key)
        stdin, stdout, stderr = ssh.exec_command(HostInfoDict['shell'])
        Result = stdout.read().decode()
        err = stderr.read()
        print("ERR: %s" % err)
        ssh.close()
        EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
        try:
            print("日志保存至数据库")
            SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime,
                      EndTime, HostInfoDict['shell'], Result)
        except Exception as err:
            print("日志保存数据库失败 %s" % err)
    except Exception as err:
        print("使用Key连接服务器 %s 失败 %s" %(HostInfoDict['public_ip'], err))
        EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
        try:
            print("错误日志保存至数据库")
            SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime, HostInfoDict['shell'], "Key登陆失败："  + str(err))
        except Exception as err:
            print("日志保存数据库失败 %s" % err)
        print("尝试使用密码连接服务器 %s" % HostInfoDict['public_ip'])
        ssh = paramiko.SSHClient()
        ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        try:
            ssh.connect(hostname=HostInfoDict['public_ip'], port=HostInfoDict['port'], username=HostInfoDict['account'], password=HostInfoDict['password'])
            stdin, stdout, stderr = ssh.exec_command(HostInfoDict['shell'])
            Result = stdout.read().decode()
            err = stderr.read()
            print("ERR: %s" % err)
            ssh.close()
            EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
            try:
                print("日志保存至数据库")
                SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime, HostInfoDict['shell'], Result)
            except Exception as err:
                print("日志保存数据库失败 %s" % err)
        except Exception as err:
            print("使用密码连接服务器失败" % err)
            EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
            try:
                print("错误日志保存至数据库")
                SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime, HostInfoDict['shell'], "密码登陆失败" + str(err))
            except Exception as err:
                print("日志保存数据库失败 %s" % err)
