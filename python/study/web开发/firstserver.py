#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/16 16:55
# @Author  :  Leanper

# @File    : firstserver.py
# @Software: PyCharm
#@Desc:


# server.py
# 从wsgiref模块导入:
from wsgiref.simple_server import make_server
# 导入我们自己编写的application函数:
from web开发 import firstdemo

# 创建一个服务器，IP地址为空，端口是8000，处理函数是application:
httpd = make_server('', 8000, firstdemo)
print ("Serving HTTP on port 8000...")
# 开始监听HTTP请求:
httpd.serve_forever()
