#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/27 16:17
# @Author  :  Leanper

# @File    : gui_message_box_filedialog_colorchooser.py
# @Software: PyCharm
# @Desc:messagebox filedialog colorchooser message

from tkinter import *
from tkinter import messagebox, filedialog, colorchooser

# TODO 文件打开保存 messagebox
# https://blog.csdn.net/sinat_41104353/article/details/79323064?utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromMachineLearnPai2%7Edefault-2.control&dist_request_id=&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromMachineLearnPai2%7Edefault-2.control
app = Tk()
# messagebox.askokcancel('Demo one')
messagebox.askquestion("title", "是否取消")




'''
filedialog
打开文件夹
askopenfilename 打开文件
asksaveasfilename保存文件
'''


def callback():
    fileName = filedialog.askopenfilename()
    print(fileName)


Button(app, text='打开文件', command=callback).pack()



'''
颜色选择器
colorchooser.askcolor()
'''


def callback():
    fileName = colorchooser.askcolor()
    print(fileName)


Button(app, text='选择颜色', command=callback).pack()

app.mainloop()