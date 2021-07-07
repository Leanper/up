# #!/usr/bin/env python
# # -*- coding: utf-8 -*-
# # @Time    : 2021/7/1 18:00
# # @Author  :  Leanper
#
# # @File    : test.py
# # @Software: PyCharm
# # @Desc:
#
#
# from appium import webdriver
#
# desired_caps = {
#
#                 'platformName': 'Android',
#
#                 'deviceName': '2164e844',
#
#                 'platformVersion': '4.4.4',
#
#                 # apk包名
#
#                 'appPackage': 'com.android.music',
#
#                 # apk的launcherActivity
#                 'appActivity': 'com.android.music.PlaylistBrowserActivity'
#
#                 }
#
# # Remote 地址在 Appuim 里找
# driver = webdriver.Remote('http://0.0.0.0:4723/wd/hub', desired_caps)



from appium import webdriver


# 跟app会话的准备信息
desired_caps = {}
# 配置平台信息：平台的名字、平台的版本（上面截图步骤 3）、设备名称（随意）
desired_caps["platformName"] = "Android"
desired_caps["platformVersion"] = "4.4.4"
desired_caps["deviceName"] = "2164e844"

# 获取应用的包名和入口页面名 - aapt命令（上面截图步骤 4）
# 切换到adb文件目录：D:\android-sdk-windows\build-tools\29.0.2
# 在路径内输入 cmd ，执行 aapt 命令：aapt dump badging  + 应用软件的 apk 路径
# 查看字段：package = "com.lemon.lemonban"
# 查看字段：launchable-activity = "com.lemon.lemonban.activity.WelcomeActivity"
desired_caps["appPackage"] = "com.android.music"
desired_caps["appActivity"] = "com.android.music.PlaylistBrowserActivity"

# 不需要重置
desired_caps["noReset"] = True
# print(desired_caps)

# 1、手动开启 appium server,使其处于监听状态。4723端口。（上面截图步骤 2）
# 2、模拟机/真机在线 - 电脑能够识别到移动设备。至少要有一台设备是可以识别。
#    cmd 输入：adb devices - 检测连接的设备。（上面截图步骤 5）

# 启动工作：与 appium server 之间建立连接，然后发送我的会话初始数据
driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_caps)

# C:\Users\ZX50J\AppData\Roaming\npm\node_modules\appium-doctor\bin