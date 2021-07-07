#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/27 9:08
# @Author  :  Leanper

# @File    : gui_Menu.py
# @Software: PyCharm
# @Desc:Menu MenuButton radioMenu


from tkinter import *
app = Tk()
def callback():
    print("你好")

# menus = Menu(app)
# menus.add_command(label="hello", command=callback)
# menus.add_command(label="quit", command=quit())
#
#
# app.config(menu=menus)
# mainloop()


def callback():
    print("你好")


menubar = Menu(app)
menubar.add_command(label='Hello', command=callback)
menubar.add_command(label='quit', command=app.quit)

app.config(menu=menubar)  # 虽然menu已经创建，但是还没添加到root窗口中，所以要调用config方法对root的menu选项相关联
# 在IDLE中点退出没反应是因为IDLE也是Tkinter实现的，他们两个共用了一个mainloop()，退出代码重复了，产生了冲突

mainloop()