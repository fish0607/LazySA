# -*- coding: utf-8 -*-
import pymysql
pymysql.install_as_MySQLdb()

from django.contrib import admin

admin.site.site_header = "LazySA"
admin.site.site_title = "LazySA"

