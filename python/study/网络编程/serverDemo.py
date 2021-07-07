#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/15 16:22
# @Author  :  Leanper

# @File    : serverDemo.py
# @Software: PyCharm
#@Desc:
#TODO 网络请求

def application(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/html')])
    return [b'<h1>Hello, web!</h1>']