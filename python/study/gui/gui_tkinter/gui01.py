#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/26 15:34
# @Author  :  Leanper

# @File    : gui01.py
# @Software: PyCharm
#@Desc:

# https://www.jianshu.com/p/5b4ae2669665

'''
这周学习thinter
https://blog.csdn.net/sinat_41104353/category_7432514_2.html
'''

import tkinter as tk
# 实例化一个Tk，用于容纳整个工艺程序
top = tk.Tk()
top.title("这是标题")


# Label()是一个组件，组件实例化以后成为一个组件对象，赋值到一个变量里面去
theLabel = tk.Label(top, text='我的第一个窗口程序')
# pack()方法用于自动调节组件自身的尺寸以及位置
theLabel.pack()

# 进入消息循环

top.mainloop()