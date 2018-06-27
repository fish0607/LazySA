#-*- coding: utf-8 -*-
#!/usr/bin/python
import os
import paramiko
import time

from main.models import SaLog

def sshKey(args):
    pkey = os.path.expanduser(args['key'])

    s = paramiko.SSHClient()
    s.load_system_host_keys()
    s.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    key = paramiko.RSAKey.from_private_key_file(pkey)

    time1 = time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
    cmd_result = []
    #cmd_result.append(time.localtime(time.time()))
    try:
        s.connect(args['ip'], args['port'], args['username'], pkey=key)
        stdin, stdout, stderr = s.exec_command(args['cmd'])
        result = stdout.read(),stderr.read()
        #cmd_result.append('%s'% host )
        if any(result):
            #cmd_result = result[0] if result[0] else result[1]
            cmd_result.append(result[0] if result[0] else result[1])
        else:
            cmd_result.append('execution has no output!Error')
        s.close()
    except Exception as e:
        cmd_result.append(e)
        print(e)
    time2 = time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
    print('Result:',cmd_result)

def sftpKey(host, srcDir, dstDir):
    pkey = os.path.expanduser('~/.ssh/id_rsa')
    private_key = paramiko.RSAKey.from_private_key_file(pkey)
    transport = paramiko.Transport((host, 22))
    transport.connect(username="root", pkey=private_key)
    try:
        sftp = paramiko.SFTPClient.from_transport(transport)
        # 将“calculator.py”上传到filelist文件夹中
        sftp.put('D:\python库\Python_shell\day05\calculator.py', '/filedir/calculator.py')
        # 将centos中的aaa.txt文件下载到桌面
        sftp.get('/filedir/oldtext.txt', r'C:\Users\duany_000\Desktop\oldtext.txt')
    except Exception as e:
        print (e)
    transport.close()

def sshPassword(host, shell,action_info):
    # 创建SSH对象
    ssh = paramiko.SSHClient()
    # 允许连接不在known_hosts文件上的主机
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    # 连接服务器
    try:
        ssh.connect(hostname="192.168.0.99", port=22, username="root", password="rootroot")
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

def sftpPassword(host, srcDir, dstDir):
    # 连接虚拟机centos上的ip及端口
    transport = paramiko.Transport((host, 22))
    transport.connect(username="root", password="rootroot")
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
