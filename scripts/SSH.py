#-*- coding: utf-8 -*-
#!/usr/bin/python

from os import path
import paramiko
import time
import os

from main.SaveLog import SaveSaLog

#临时目录
TmpDir = path.join(path.dirname(path.abspath(path.dirname(__file__))),'temp')

if os.path.exists(TmpDir):
    print("临时目录: %s" %TmpDir)
else:
    print("临时目录: %s 不存在,程序自动创建" %TmpDir)
    try:
        os.mkdir(TmpDir)
        print("临时目录: %s 创建成功" %TmpDir)
    except Exception as err:
        print("临时目录: %s ,自动创建失败: %s " %(TmpDir,err))

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
        stdin, stdout, stderr = s.exec_command(HostInfoDict['cmd'])
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

def sftpKey(HostInfoDict):
    pkey = os.path.expanduser('~/.ssh/id_rsa')
    private_key = paramiko.RSAKey.from_private_key_file(pkey)
    transport = paramiko.Transport((HostInfoDict['public_ip'], HostInfoDict['port']))
    transport.connect(username=HostInfoDict['account'], pkey=private_key)
    try:
        sftp = paramiko.SFTPClient.from_transport(transport)
        # 将“calculator.py”上传到filelist文件夹中
        sftp.put(HostInfoDict['SrcFile'], HostInfoDict['DstFile'])
        # 将centos中的aaa.txt文件下载到桌面
        #sftp.get('/filedir/oldtext.txt', r'C:\Users\duany_000\Desktop\oldtext.txt')
        sftp.get(HostInfoDict['SrcFile'], HostInfoDict['DstFile'])
    except Exception as e:
        print (e)
    transport.close()

def sshPassword(HostInfoDict):
    # 创建SSH对象
    ssh = paramiko.SSHClient()
    # 允许连接不在known_hosts文件上的主机
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    # 连接服务器
    try:
        ssh.connect(hostname=HostInfoDict['public_ip'], port=HostInfoDict['port'], username=HostInfoDict['account'], password=HostInfoDict['password'])
        # 执行命令
        stdin, stdout, stderr = ssh.exec_command('df')
        # 获取结果
        result = stdout.read().decode()
        # 获取错误提示（stdout、stderr只会输出其中一个）
        err = stderr.read()
        # 关闭连接
        ssh.close()
        print(stdin, result, err)
    except Exception as e:
        print (e)

def sftpPassword(HostInfoDict):
    # 连接虚拟机centos上的ip及端口
    transport = paramiko.Transport((HostInfoDict['public_ip'], HostInfoDict['port']))
    transport.connect(username=HostInfoDict['account'], password=HostInfoDict['password'])
    # 将实例化的Transport作为参数传入SFTPClient中
    try:
        sftp = paramiko.SFTPClient.from_transport(transport)
        # 将“calculator.py”上传到filelist文件夹中
        sftp.put('D:\python库\Python_shell\day05\calculator.py', '/filelist/calculator.py')
        # 将centos中的aaa.txt文件下载到桌面
        sftp.get('/filedir/aaa.txt', r'C:\Users\duany_000\Desktop\test_aaa.txt')
        transport.close()
    except Exception as e:
        print(e)
