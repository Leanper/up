#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/27 9:46
# @Author  :  Leanper

# @File    : grid布局.py
# @Software: PyCharm
#@Desc:

from tkinter import *

app = Tk()
app.geometry('800x600')

Label(app, text='作品：').grid(row=0, column=0)  # 选项row代表行，column代表列
Label(app, text='作者：').grid(row=1, column=0)
Entry(app).grid(row=0, column=1)
Entry(app).grid(row=1, column=1)

Label(app, text='作品：', bg="#00ff00").grid(row=2, column=0, rowspan=2)
# Label(app, text='作者：').grid(row=3, column=0)
Entry(app).grid(row=2, column=1,)
Entry(app).grid(row=3, column=1)



app.mainloop()