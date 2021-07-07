#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/27 17:13
# @Author  :  Leanper

# @File    : pack布局.py
# @Software: PyCharm
# @Desc: 布局学习
# TODO
#
from tkinter import *

app = Tk()
# 设置宽高
app.geometry('400x300')
'''
pack布局
fill=both表示xy轴方向扩冲，expand 选项是告诉窗口管理器将父组件的额外空间也充满
fill=BOTH, expand=True 
n, ne, e, se, s, sw, w, nw, or center EWSN表示东南西北
padx pady表示距离位置正数表示距离左上  负数表示距离右下
side=RIGHT距离上下左右，默认值是TOP 还可以设置的值有：LEFT，BOTTOM，RIGHT
'''
# Button(root,text= "A",bg='red').pack(side = LEFT, expand = YES, fill = Y)
Label(app, text='red', bg='red', fg='white').pack(fill=X, ) #fill选项是设置横向填充
Label(app, text='red', bg='green', fg='black').pack(fill=Y,side=RIGHT)
Label(app, text='red', bg='blue', fg='white').pack(fill=X)
Label(app, text='red', bg='red', fg='black').pack(anchor=SE, padx=10, ipady=10)
Button(app, text="C").pack(side=RIGHT, expand=True, fill=NONE, anchor=NE, padx=10, ipady=10)
app.mainloop()
