#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/22 13:55
# @Author  :  Leanper

# @File    : views.py
# @Software: PyCharm
#@Desc:
from django.shortcuts import render

def runoob(request,year):
    context          = {}
    context['hello'] = 'Hello World!'
    context['age'] = '年龄'
    context['hobby'] =year
    return render(request, 'roob.html', context)


def page_not_found(request, test):
    return render(request, '404.html')


# def page_error(request):
#     return render(request, '500.html')
#
#
# def permission_denied(request):
#     return render(request, '403.html')
#
#
# def bad_request(request):
#     return render(request, '400.html')
# pass