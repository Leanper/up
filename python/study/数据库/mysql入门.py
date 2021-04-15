#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/14 17:24
# @Author  :  Leanper

# @File    : mysql入门.py
# @Software: PyCharm
#@Desc:

import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",  # 数据库主机地址
    user="root",  # 数据库用户名
    passwd="password",
    database="leanperlife" #知名数据库名字

)

print(mydb)

mycursor = mydb.cursor()

# mycursor.execute("CREATE TABLE sites IF NOT EXISTS (name VARCHAR(255), url VARCHAR(255))")


sql = "INSERT INTO sites (name, url) VALUES (%s, %s)"
val = ("RUNOOB", "https://www.runoob.com")
mycursor.execute(sql, val)

mydb.commit()  # 数据表内容有更新，必须使用到该语句

print(mycursor.rowcount, "记录插入成功。")
sql = "INSERT INTO sites (name, url) VALUES (%s, %s)"


# 批量数据
val = [
    ('Google', 'https://www.google.com'),
    ('Github', 'https://www.github.com'),
    ('Taobao', 'https://www.taobao.com'),
    ('stackoverflow', 'https://www.stackoverflow.com/')
]

mycursor.executemany(sql, val)

mydb.commit()  # 数据表内容有更新，必须使用到该语句

# 查询数据
mycursor.execute("SELECT * FROM sites")

myresult = mycursor.fetchall()  # fetchall() 获取所有记录

for x in myresult:
    print(x)


# 模糊查询
print("模糊查询")
sql = "SELECT * FROM sites WHERE url LIKE '%oo%'"

mycursor.execute(sql)

myresult = mycursor.fetchall()

for x in myresult:
    print(x)


# 防止sql注入

sql = "SELECT * FROM sites WHERE name = %s"
na = ("RUNOOB",)

mycursor.execute(sql, na)

myresult = mycursor.fetchall()

for x in myresult:
    print(x)

# //关闭cursor
mycursor.close()