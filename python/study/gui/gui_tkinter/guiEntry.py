#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/26 17:14
# @Author  :  Leanper

# @File    : guiEntry.py
# @Software: PyCharm
#@Desc:输入框

from tkinter import *

app = Tk()
# e = Entry(app)
# e.delete(0, END)  #将输入框里面的内容清空
# e.insert(0, '默认文本在此！')
# e.pack(ma=20, pady=20)

Label(app, text='作品：').grid(row=0, column=0)  # 选项row代表行，column代表列
Label(app, text='作者：').grid(row=1, column=0)
# invalidcommand 选项指定的函数只有在 validatecommand 的返回值为 False 的时候才会被调用

def check():
    if(True):
        print("获取焦点")
    else:
        print("纳尼")

# https://blog.csdn.net/sinat_41104353/article/details/79302618
e1 = Entry(app)
e2 = Entry(app, show='*', validate="focusout", validatecommand=check)
e1.grid(row=0, column=1, padx=10, pady=5)
e2.grid(row=1, column=1, padx=30, pady=5)



def show():
    print("作品：《%s》" % e1.get())
    print("作者：%s" % e2.get())



Button(app, text='获取信息', width=10, command=show)\
    .grid(row=3, column=0, sticky=W, padx=10, pady=5)  # sticky参数的值和anceror的一样，用来设置按钮的方位
Button(app, text='退出', width=10, command=app.quit).\
    grid(row=3, column=1, sticky=E, padx=10, pady=5)  # 退出直接调用根窗口的quit方法


app.mainloop()
