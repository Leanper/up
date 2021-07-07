#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/5/10 14:00
# @Author  :  Leanper

# @File    : url.py
# @Software: PyCharm
# @Desc:


from django.urls import path
from blog import views


urlpatterns = [
    path('index/', views.runoob),
    path('hello/<int:year>', views.hello),
    path('testdb/', views.testdb),
    path('loadblog/', views.loadblog),
    path('loadsuccess/', views.loadsuccess),
    path('addAuthor/', views.addAuthor),
    path('addArcile/', views.addArcile),
    path('selectAuthor/', views.selectAuthor),
    path('selectArcile/', views.selectArcile),
    path('updateInfo/<str:nameold>/<str:namenew>', views.updateInfo),

]