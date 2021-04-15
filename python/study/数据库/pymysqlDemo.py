#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/15 10:50
# @Author  :  Leanper

# @File    : pymysqlDemo.py
# @Software: PyCharm
#@Desc:

import pymysql

# 打开数据库连接
'''
    host="localhost",  # 数据库主机地址
    user="root",  # 数据库用户名
    passwd="password",
    database="leanperlife" #数据库名字
'''

# 创建链接
db= pymysql.connect(host="localhost",user="root",
password="password", db="leanperlife")
# 使用 cursor() 方法创建一个游标对象 cursor
cursor = db.cursor()

sql = "SELECT * FROM sites WHERE name = %s"
na = ("RUNOOB",)

cursor.execute(sql, na)

for x in cursor:
    print(x)

# 关闭数据库连接
db.close()