#!/bin/bash
#
# Author:fish0607
# DATE:2018-01-30
# Version:V1.0
#

shopt -u expand_aliases
source /etc/profile

ShellDir="$( cd "$( dirname "$0" )" && pwd )"
Name=`echo ${ShellDir} | awk -F'/' '{print $NF}'`
MySQL_User='root'
MySQL_Passwd='123456'
DbName='lazysa'
port=80

start(){
	echo "Start $Name"
	python ${ShellDir}/manage.py runserver 0.0.0.0:${port} &
}

syncdb(){
	python ${ShellDir}/manage.py makemigrations
	python ${ShellDir}/manage.py migrate
}	

stop(){
	PID=`netstat -anlp|grep ${port}|grep LISTEN |awk '{printf $7}'|cut -d/ -f1`
	if [ ! -z "$PID" ];then
		echo "Kill ${Name}(${port})"
		kill -15 $PID
	else
		echo "${Name}(${port}) Not Runing."
	fi
}

backup(){
	cd ${ShellDir}
	mysqldump -u${MySQL_User} -p${MySQL_Passwd} -R ${DbName} > ${ShellDir}/logs/${DbName}_`date +%Y%m%d_%H%M%S`.sql
	cd .. && tar -czvf ${ShellDir}/logs/${Name}_`date +%Y%m%d_%H%M%S`.tar.gz --exclude=logs ${Name}
}

case "$1" in
	start)
		start
	;;
	stop)
		stop $2
	;;
	syncdb)
		syncdb 
	;;
	backup)
		backup
	;;
	*)
	echo $"Usage: $0 {start|stop|syncdb}"
	exit 2
esac
