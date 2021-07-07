#  <center>selenium



## 1.0 selenium 介绍安装

###  1.1 安装介绍

- 通过 pip install selenium
- selenium 是一个 web 的自动化测试工具
- 首先安装浏览器插件对应的driver
  - driver为执行文件 chorme放到  安装路径下\Google\Chrome\Application
  - 谷歌 火狐 ie都需要安装对应的driver















## 2.0 使用

####  2.1 简单实用

```
# 导入selenium
from selenium import webdriver

# 打开浏览器 可选择浏览器webdriver.Fixfox()  webdriver.Ie()等
browser = webdriver.Chrome()
# 设置路径
browser.get('https://www.baidu.com/')
# 通过id寻找元素
browser.find_element_by_id('su').click()

```



#### 2.2 元素定位

##### webdriver 提供了一系列的对象定位方法，常用的有以下几种：

id定位：find_element_by_id()

name定位：find_element_by_name()

class定位：find_element_by_class_name()

link定位：find_element_by_link_text()

partial link定位：find_element_by_partial_link_text()

tag定位：find_element_by_tag_name()

xpath定位：find_element_by_xpath()

css定位：find_element_by_css_selector()





- #####  下拉列表定位

- ##### 层级定位

- ##### 窗口定位

- ##### 定位一组元素









#### 2.3 鼠标键盘窗口基本交互

#####  2.3.1 浏览器界面交互

- 设置浏览器最大界面

  browser.maximize_window()

- 设置浏览器最大界面

  browser.minimize_window()

- 设置浏览器宽480、高800显示

  browser.set_window_size(480, 800)

- 前进

  browser.forword()

- 后退

  browser.back()

  

- webdriver 中比较常用的操作对象的方法有下面几个：

  - click——点击对象
  - send_keys——在对象上模拟按键输入
  - clear——清除对象的内容，如果可以的话
  - submit——提交对象的内容，如果可以的话
  - text——用于获取元素的文本信息

  



---



#####  2.3.2键盘事件交互

要想调用键盘按键操作需要引入 keys 包：from selenium.webdriver.common.keys import Keys通过  send_keys()调用按键：send_keys(Keys.TAB) # TABsend_keys(Keys.ENTER) # 回车

键盘组合键的用法：

\#ctrl+a 全选输入框内容 driver.find_element_by_id("kw").send_keys(Keys.CONTROL,'a')

\#ctrl+x 剪切输入框内容 driver.find_element_by_id("kw").send_keys(Keys.CONTROL,'x')



---



##### 2.3.3 鼠标事件

鼠标事件一般包括鼠标右键、双击、拖动、移动鼠标到某个元素上等等。需要引入ActionChains类。引入方法：from selenium.webdriver.common.action_chains import ActionChains

ActionChains 常用方法：perform() 执行所有ActionChains 中存储的行为；context_click() 右击；double_click() 双击；drag_and_drop() 拖动；move_to_element() 鼠标悬停。

鼠标双击示例：

\#定位到要双击的元素qqq =driver.find_element_by_xpath("xxx") #对定位到的元素执行鼠标双击操作  ActionChains(driver).double_click(qqq).perform()

鼠标拖放示例：

\#定位元素的原位置 element = driver.find_element_by_name("source") #定位元素要移动到的目标位置 target = driver.find_element_by_name("target")#执行元素的移动操作 ActionChains(driver).drag_and_drop(element, target).perform()



#### 2.4 selenium三种等待方式

 操作是一般都会等待等程序执行时间，

- 强制等待

  - time.sleep(3)睡眠三秒
  - 引入time模块
  - 强制性执行 太死板，严重影响程序执行速度。

- 隐性等待

  -  implicitly_wait(3)
  - 通过driver调用 
  - 在一个时间范围内智能的等待

- 显性等待

  - ＴＯＤＯ

  

</details>



### 3.0 多层框架或窗口的定位

- #### switch_to_frame() 弃用 已改为switch_to.frame()

- #### switch_to_window()弃用 已改为switch_to.window()

- #### switch_to_alert()弃用 已改为switch_to.alert()



有可能嵌套的不是框架，而是窗口，还有真对窗口的方法：switch_to_window





## 3.0 unittest



### 3.1 

- ##### Testcase：

一个TestCase的实例就是一个测试用例。什么是测试用例呢？就是一个完整的测试流程，包括测试前准备环境的搭建(setUp)，执行测试代码 (run)，以及测试后环境的还原(tearDown)。元测试(unit  test)的本质也就在这里，一个测试用例是一个完整的测试单元，通过运行这个测试单元，可以对某一个问题进行验证。

- ##### Test suite：

多个测试用例集合在一起，就是TestSuite，而且TestSuite也可以嵌套TestSuite。

- ##### Test runner：

是来执行测试用例的，其中的run(test)会执行TestSuite/TestCase中的run(result)方法。

- ##### TestLoader：

是用来加载TestCase到TestSuite中的，其中有几个loadTestsFrom__()方法，就是从各个地方寻找TestCase，创建它们的实例，然后add到TestSuite中，再返回一个TestSuite实例。

- ##### Test fixture：

对一个测试用例环境的搭建和销毁,是一个fixture，通过覆盖  TestCase的setUp()和tearDown()方法来实现。这个有什么用呢？比如说在这个测试用例中需要访问数据库，那么可以在setUp()  中建立数据库连接以及进行一些初始化，在tearDown()中清除在数据库中产生的数据，然后关闭连接。注意tearDown的过程很重要，要为以后的 TestCase留下一个干净的环境。关于fixture，还有一个专门的库函数叫做fixtures，功能更加强大。

