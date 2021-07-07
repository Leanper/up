#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/28 9:43
# @Author  :  Leanper

# @File    : wx01.py
# @Software: PyCharm
#@Desc:

import wx

app=wx.App(False)

frame = wx.Frame(None, wx.ID_ANY, "Hello World") # A Frame is a top-level window.
frame.SetTitle("标题")
frame.SetSize(wx.Size(100, 850))
frame.Show(True)     # Show the frame.

app.MainLoop()
