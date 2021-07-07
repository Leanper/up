#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/5/10 13:59
# @Author  :  Leanper

# @File    : urls.py
# @Software: PyCharm
# @Desc:


from django.contrib import admin
from django.urls import path,include

from BookStore import views as vb

urlpatterns = [

    path('addData/', vb.addData),


]
