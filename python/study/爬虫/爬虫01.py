#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2021/4/29 9:06
# @Author  :  Leanper

# @File    : 爬虫01.py
# @Software: PyCharm
# @Desc:

import urllib.request

# 打开的过程就是从服务器上把网页获取的过程
# response = urllib.request.urlopen("https://blog.csdn.net/sinat_41104353/article/details/79274922")
# html = response.read()
# html = html.decode("utf-8")
# print(html)

import urllib.request
import urllib.parse
import json

content = input('请输入需要翻译的内容：')

url = 'http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule&smartresult=ugc&sessionFrom=http://www.youdao.com/'  # 链接就是Request URL的那个
data = {}
data['type'] = 'AUTO'
data['i'] = content
data['doctype'] = 'json'  # json是一种轻量级数据交换的格式，用字符串的形式把Python的数据结构封装起来
data['xmlVersion'] = '1.6'
data['keyfrom'] = 'fanyi.web'
data['ue'] = 'UTF-8'
data['typoResult'] = 'true'
data = urllib.parse.urlencode(data).encode('utf-8')

response = urllib.request.urlopen(url, data)
html = response.read().decode('utf-8')

target = json.loads(html)
print("翻译结果：%s" % target['translateResult'][0][0]['tgt'])
