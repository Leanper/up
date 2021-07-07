#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/16 16:54
# @Author  :  Leanper

# @File    : firstdemo.py
# @Software: PyCharm
#@Desc:


def application(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/html')])
    return '<h1>Hello, saosjdaojf !</h1>'
