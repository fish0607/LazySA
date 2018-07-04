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



def sftpPassword(HostInfoDict):
    # 连接虚拟机centos上的ip及端口
    transport = paramiko.Transport((HostInfoDict['public_ip'], HostInfoDict['port']))
    transport.connect(username=HostInfoDict['account'], password=HostInfoDict['password'])
    # 将实例化的Transport作为参数传入SFTPClient中
    try:
        sftp = paramiko.SFTPClient.from_transport(transport)
        # 上传
        #StartTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
        #Result = sftp.put(HostInfoDict['SrcFile'], HostInfoDict['DstFile'])
        print('开始上传文件 %s' %HostInfoDict['SrcFile'])
        Result = sftp.put(r'D:\Personal\Documents\LazySA\run.sh', HostInfoDict['DstFile'])
        # 将centos中的aaa.txt文件下载到桌面
        #Result = sftp.get('/filedir/aaa.txt', r'C:\Users\duany_000\Desktop\test_aaa.txt')
        transport.close()
        '''
        EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
        try:
            print('保存日志到数据库')
            SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,"传输文件: " + HostInfoDict['SrcFile'] , Result)
        except Exception as err:
            print("日志保存失败 %s" % err)
        '''
    except Exception as err:
        print("文件传输错误 %s" % err)
