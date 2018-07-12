* 项目名称：LazySA
* 实现功能：服务器信息管理、运维管理
* 环境需求：Python 3.6  Django-2.0、MySQL-5.6
* paramiko simplejson

* * *

* 同步数据库
* python manage.py makemigrations
* python manage.py migrate

* 创建用户
* python manage.py createsuperuser

* * *

* 程序默认使用key连接服务器执行相关操作(key保存目录为：~/.ssh/id_rsa)

* * *

* 后台管理界面

![github](/explain/admin01.png)
![github](/explain/admin02.png)

* 后台IDC信息管理

![github](/explain/admin-idc01.png)
![github](/explain/admin-idc02.png)
![github](/explain/admin-idc03.png)

* 后台服务器信息管理

![github](/explain/admin-host01.png)
![github](/explain/admin-host02.png)
![github](/explain/admin-host03.png)
![github](/explain/admin-host04.png)
![github](/explain/admin-host05.png)


* 后台项目信息管理

![github](/explain/admin-project01.png)
![github](/explain/admin-project02.png)
![github](/explain/admin-project03.png)

> 注意：对应脚本名称一定要保持正常，否则相关功能会无法使用

* 前台登陆

![github](/explain/login.png)

* 前台登陆首页

![github](/explain/index.png)

* 资产信息查看

![github](/explain/host.png)

* 运维管理

![github](/explain/order.png)
![github](/explain/files.png)
![github](/explain/syslog.png)
![github](/explain/salog.png)

* 项目管理

![github](/explain/project01.png)
![github](/explain/project02.png)
![github](/explain/project03.png)
