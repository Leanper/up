#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/15 15:17
# @Author  :  Leanper

# @File    : 简单邮件传输协议.py
# @Software: PyCharm
#@Desc:

import smtplib
from email.mime.text import MIMEText
from email.header import Header

# TODO 没有设置发送人接收人信息
message = MIMEText('呜哈哈哈哈!')   # 邮件内容
# message['From'] = '你爸爸'  # 邮件发送者名字
# message['To'] = '我女儿'   # 邮件接收者名字
message['Subject'] = Header('测试!')   # 邮件主题

message['From'] = Header("菜鸟教程", 'utf-8')     # 发送者
message['To'] =  Header("测试", 'utf-8')

mail = smtplib.SMTP()
mail.connect("smtp.qq.com")   # 连接 qq 邮箱

try:
    mail.login("2423499791@qq.com", "gibqwznknaqkdhhf")  # 账号和授权码
    # "1032646721@qq.com", "1872396118@qq.com"
    mail.sendmail("2423499791@qq.com", ["Leanper_A@163.com", ],
                  message.as_string())  # 发送账号、接收账号和邮件信息

    print ("邮件发送成功")
except smtplib.SMTPException:
    print ("Error: 无法发送邮件")