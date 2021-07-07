#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/28 17:22
# @Author  :  Leanper

# @File    : 事件绑定.py
# @Software: PyCharm
# @Desc:


from tkinter import *

app = Tk()


# 当触发<Button-1>，Tkinter会带着事件本身去调用callback，会把它传入到callback中，因此要个形参来接收对应的事件描述
def callback(event):
    print("点击位置：", event.x, event.y)  # 这个x和y表示的是相对于应用程序左上角的x和y。root的x和y相对的是屏幕

frame = Frame(app, width=200, height=200)
frame.bind("<Button-1>",
           callback)  # -左边是事件本身，右边是事件详细描述。Button表示的是鼠标的点击事件，1表示的是左键，2代表滚轮，3表示右键，4、5对于Linux系统才有用，表示滚轮向上滚和向下滚。对于Windows和Mac系统来说则是通过mousewhell来表示用户是向上滚还是向下滚了滚轮。
frame.pack()

def callback(event):
    print(event.char)  # 获取当前键盘按下的字符

frame = Frame(app, width=200, height=200)
frame.bind("<Key>", callback)  # 组件想要响应键盘事件，组件必须获得焦点，组件才会响应键盘来的消息。因为一个窗口可以有很多组件，键盘一次敲击不知道给哪个组件。
frame.focus_set()  # 通过focus_set方法获得焦点。也可以设置Frame的takefocus选项为True，然后使用Tab将焦点转移上来
frame.pack()

mainloop()