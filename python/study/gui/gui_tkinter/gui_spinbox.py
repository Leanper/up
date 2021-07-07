#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/27 16:35
# @Author  :  Leanper

# @File    : gui_spinbox.py
# @Software: PyCharm
#@Desc:

from tkinter import *

from wx import MessageBox

'''
Spinbox(master=None, **options)(class) master 父控件

'''
root = Tk()

w = Spinbox(root, from_=0, to=10)  # from与Python的关键字冲突，故加上个下划线。步进可以设置
w.pack(fill=BOTH, expand=True)

s = Spinbox(root, values=(1, 3, 5, 6), bg="#00ff00", buttonbackground="#ff00ff")
s.pack(side=RIGHT, padx=10)
mainloop()
