#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/28 16:26
# @Author  :  Leanper

# @File    : gui_toplevel_tk.py
# @Software: PyCharm
# @Desc:

from tkinter import *

app = Tk()

def create():
    top = Toplevel()
    top.title('Python')
    top.geometry(300,300)
    msg = Message(top, text='I love study')
    msg.pack(x=30,y=30)

Button(app, text='创建顶级窗口', command=create).pack()
app.mainloop()