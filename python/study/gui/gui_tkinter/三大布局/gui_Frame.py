#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/28 15:51
# @Author  :  Leanper

# @File    : gui_Frame.py
# @Software: PyCharm
# @Desc:

from tkinter import *

app = Tk()
app.geometry('800x600')
frame = Frame(app, width=200, height=200, bg="#00ff00")
f1 = Frame(app, width=200, height=200, bg='green')
text=Label(f1,text="文本标签", bg="#ff00ff").place(relx=0.1, rely=0.2)
f1.place(relx=0.5, rely=0.5)# 必须标明位置
app.mainloop()
