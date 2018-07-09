#-*- coding: utf-8 -*-
#!/usr/bin/python

from os import path
import paramiko
import time
import os

from main.SaveLog import SaveSaLog

def sftpPut(HostInfoDict):
    KeyFile = os.path.join('~', '.ssh', 'id_rsa')
    print("尝试使用key连接服务器：%s" % HostInfoDict['public_ip'])
    pkey = os.path.expanduser(KeyFile)
    StartTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
    try:
        private_key = paramiko.RSAKey.from_private_key_file(pkey)
        transport = paramiko.Transport((HostInfoDict['public_ip'], int(HostInfoDict['port'])))
        transport.connect(username=HostInfoDict['account'], pkey=private_key)
        sftp = paramiko.SFTPClient.from_transport(transport)
        try:
            print('开始上传文件 %s' % HostInfoDict['SrcFile'])
            if os.path.isdir(HostInfoDict['SrcFile']):
                for f in os.listdir(HostInfoDict['SrcFile']):
                    sftp.put(os.path.join(HostInfoDict['SrcFile'] + f), os.path.join(HostInfoDict['DestFile'] + f))
            else:
                sftp.put(HostInfoDict['SrcFile'], HostInfoDict['DestFile'])
            transport.close()
            EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
            try:
                print('保存日志到数据库')
                SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
                          "上传文件: " + HostInfoDict['SrcFile'] + ";" + "目标文件：" + HostInfoDict['DestFile'], '传输完成')
            except Exception as err:
                print("日志保存失败: %s" % err)
        except Exception as err:
            print("文件传输失败: %s" % err)
            EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
            try:
                print("错误日志保存至数据库")
                SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
                      "上传文件: " + HostInfoDict['SrcFile'], '传输失败' + str(err))
            except Exception as err:
                print("日志保存失败: %s" % err)
    except Exception as err:
        print("使用Key连接服务器 %s 失败: %s" % (HostInfoDict['public_ip'], err))

        print("尝试使用密码连接服务器：%s" % HostInfoDict['public_ip'])
        transport = paramiko.Transport((HostInfoDict['public_ip'], int(HostInfoDict['port'])))
        StartTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
        try:
            transport.connect(username=HostInfoDict['account'], password=HostInfoDict['password'])
            sftp = paramiko.SFTPClient.from_transport(transport)
            print('开始上传文件 %s' % HostInfoDict['SrcFile'])
            # 上传
            # sftp.put(HostInfoDict['SrcFile'], HostInfoDict['DestFile'])
            if os.path.isdir(HostInfoDict['SrcFile']):
                for f in os.listdir(HostInfoDict['SrcFile']):
                    sftp.put(os.path.join(HostInfoDict['SrcFile'] + f), os.path.join(HostInfoDict['DestFile'] + f))
            else:
                sftp.put(HostInfoDict['SrcFile'], HostInfoDict['DestFile'])
            transport.close()
            EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
            try:
                print('保存日志到数据库')
                SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
                          "上传文件: " + HostInfoDict['SrcFile']  + ";" + "目标文件：" + HostInfoDict['DestFile'] , '传输完成')
            except Exception as err:
                print("日志保存失败 %s" % err)
        except Exception as err:
            print("使用密码接服务器 %s 失败: %s" % (HostInfoDict['public_ip'], err))
            EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
            try:
                print("错误日志保存至数据库")
                SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
                          "上传文件: " + HostInfoDict['SrcFile'], '传输失败' + str(err))
            except Exception as err:
                print("日志保存失败: %s" % err)

def sftpGet(HostInfoDict):
    KeyFile = os.path.join('~', '.ssh', 'id_rsa')
    print("尝试使用key连接服务器：%s" % HostInfoDict['public_ip'])
    pkey = os.path.expanduser(KeyFile)
    StartTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
    try:
        private_key = paramiko.RSAKey.from_private_key_file(pkey)
        transport = paramiko.Transport((HostInfoDict['public_ip'], int(HostInfoDict['port'])))
        transport.connect(username=HostInfoDict['account'], pkey=private_key)
        sftp = paramiko.SFTPClient.from_transport(transport)
        print('开始上传文件 %s' % HostInfoDict['SrcFile'])
        try:
            # 下载到临时目录
            if os.path.isdir(HostInfoDict['DestFile']):
                for f in sftp.listdir(HostInfoDict['SrcFile']):
                    sftp.get(os.path.join(HostInfoDict['SrcFile'],f),os.path.join(HostInfoDict['DestFile'],f))
            else:
                sftp.get(HostInfoDict['SrcFile'],HostInfoDict['DestFile'])
            transport.close()
            EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
            try:
                print('保存日志到数据库')
                SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
                          "上传文件: " + HostInfoDict['SrcFile'] + "\n" + "目标文件：" + HostInfoDict['DstFile'], '传输完成')
            except Exception as err:
                print("日志保存失败 %s" % err)
        except Exception as err:
            print("文件传输失败: %s" % err)
            EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
            try:
                print("错误日志保存至数据库")
                SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
                      "下载文件: " + HostInfoDict['SrcFile'], '传输失败' + str(err))
            except Exception as err:
                print("日志保存失败 %s" % err)
    except Exception as err:
        print("使用Key连接接服务器 %s 失败: %s" % (HostInfoDict['public_ip'], err))

        print("尝试使用密码连接服务器：%s" % HostInfoDict['public_ip'])
        transport = paramiko.Transport((HostInfoDict['public_ip'], int(HostInfoDict['port'])))
        StartTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
        try:
            transport.connect(username=HostInfoDict['account'], password=HostInfoDict['password'])
            sftp = paramiko.SFTPClient.from_transport(transport)
            print('开始从服务器 %s 上下载文件 %s' %(HostInfoDict['public_ip'], HostInfoDict['SrcFile']))
            # 下载到临时目录
            if os.path.isdir(HostInfoDict['DestFile']):
                for f in sftp.listdir(HostInfoDict['SrcFile']):
                    sftp.get(os.path.join(HostInfoDict['SrcFile'], f), os.path.join(HostInfoDict['DestFile'], f))
            else:
                sftp.get(HostInfoDict['SrcFile'], HostInfoDict['DestFile'])
            transport.close()
            EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
            try:
                print('保存日志到数据库')
                SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
                          "下载文件: " + HostInfoDict['SrcFile']  + "\n" + "目标文件：" + HostInfoDict['DestFile'] , '传输完成')
            except Exception as err:
                print("日志保存失败 %s" % err)
        except Exception as err:
            print("使用密码接服务器 %s 失败: %s" % (HostInfoDict['public_ip'], err))
            EndTime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
            try:
                print("错误日志保存至数据库")
                SaveSaLog(HostInfoDict['LoginUser'], HostInfoDict['account'], HostInfoDict['public_ip'], StartTime, EndTime,
                      "下载文件: " + HostInfoDict['SrcFile'], '传输失败' + str(err) )
            except Exception as err:
                print("日志保存失败 %s" % err)
