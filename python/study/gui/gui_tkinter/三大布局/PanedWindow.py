#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/28 16:36
# @Author  :  Leanper

# @File    : PanedWindow.py
# @Software: PyCharm
# @Desc:PanedWindow
# 学习地址：https://blog.csdn.net/sinat_41104353/article/details/79319343?utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7Edefault-7.control&dist_request_id=1619598153586_90636&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7Edefault-7.control
from tkinter import *
m = PanedWindow(orient=VERTICAL)
m.pack(fill=BOTH, expand=1)

top = Label(m, text='top pane')
m.add(top)

bottom = Label(m, text='bottom pane')
m.add(bottom)


m1 = PanedWindow(showhandle=True, sashrelief=SUNKEN)  # 默认是左右分布的
m1.pack(fill=BOTH, expand=1)

left = Label(m1, text='left pane')
m1.add(left)

m2 = PanedWindow(orient=VERTICAL, showhandle=True, sashrelief=SUNKEN)
m1.add(m2)

top = Label(m2, text='top pane')
m2.add(top)

bottom = Label(m2, text='bottom pane')
m2.add(bottom)

mainloop()
