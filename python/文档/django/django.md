---
typora-copy-images-to: ..\img
---



#  django




---
### 1.0 安装
+ 通过pip安装 命令为： pip install django==3.1.8(3.1.8为版本号)
+ 检测是否安装成功 django-admin 

---

### 2.0 常见命令
+ 创建项目 django-admin startproject HelloDjango
+ 启动项目 python manage.py runserver
+ 创建应用 python manage.py startapp 应用名
+ 清空数据库 python manage.py flush
+ 创建管理员： python manage.py createsuperuser
+ 修改用户密码： python manage.py changepassword username
+ Django项目环境终端： python manage.py shell
+ 创建模型     python manage.py makemigrations
+ 数据库迁移   python manage.py migrate

### 3.0 目录结构

|---mysite # 项目的/目录 
|---mysite # 项目目录 
    |---__init__.py 
    |---settings.py # 配置文件 
    |---urls.py # 路由系统 ===> url与视图的对应关系 
    |---wsgi.py # runserver命令就使用wsgiref模块做简单的web server 
|---manage.py # 管理文件	

### 4.0 创建应用
+ 创建应用:django-admin startproject 项目名称

+ 创建app python manage.py startapp app名称
+ 在上一级setting添加app名称![image-20210508110122201](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210508110122201.png)
+ app目录结构如下图![image-20210508110153130](H:\up\python\img\image-20210508110153130.png)
---

### 5.0创建模板
+ 在根目录创建templates文件夹
+ 在根文件setting的TEMPLATES中添加： 'DIRS': [os.path.join(BASE_DIR, 'templates')], 
+ 在view中定义方法如下带参数返回：

---
```
def runoob(request):
 views_list = ["菜鸟教程1","菜鸟教程2","菜鸟教程3"]
return render(request, "runoob.html", {"views_list": views_list})
---
```
+ 在url中添加路径：urlpatterns = [path('runoob/', views.runoob),]

---

### 6.0 路由配置

1. 默认情况下内置下面的路径转换器

   1、str：匹配任何非空字符串，但不含斜杠/，如果你没有专门指定转换器，那么这个是默认使用的；
   2、int：匹配0和正整数，返回一个int类型
   3、slug：可理解为注释、后缀、附属等概念，是url拖在最后的一部分解释性字符。该转换器匹配任何ASCII字符以及连接符和下划线，比如’ building-your-1st-django-site‘；
   4、uuid：匹配一个uuid格式的对象。为了防止冲突，规定必须使用破折号，所有字母必须小写，例如’075194d3-6885-417e-a8a8-6c931e272f00‘ 。返回一个UUID对象；
   5、path：匹配任何非空字符串，重点是可以包含路径分隔符’/‘。这个转换器可以帮助你匹配整个url而不是一段一段的url字符串。

   

   ---

2. 传递参数

   1. 在方法中添加形参

      ```
      def hello(request,year,name):
          return HttpResponse('Hello,world  %s %d' %{year,name})
      ```
   
      ![image-20210507151246318](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210507151246318.png)
   
   2. ```python
      urlpatterns = [
          path('selectAuthor/', views.selectAuthor),
          path('index/<int:year>', views.runoob),
          path('hello/<int:year>/<slug:slug>', views.hello),
      ]
      ```
   
      
   
3. 自定义路由

   ![image-20210507151450211](H:\up\python\img\image-20210507151450211.png)

4. url省略

   1. 子app创建url配置文件

   2. 在父urls配置 path('blogs/', include('blog.url')),

      

   ![image-20210507152043011](H:\up\python\img\image-20210507152043011.png)

   ---

   
   
   ### 6.2 反向代理
   
    	参数有位置参数 由关键字参数
   
   

### 7.0 ORM

​	（关系对象映射（Object Relational Mapping，简称ORM））



#### 	7.1 model简介

- 都是

- ##### 常用字段数据类型

**1、AutoField**  ---自增列 = int(11)  如果没有的话，默认会生成一个名称为 id 的列，如果要显示的自定义一个自增列，必须将给列设置为主键 primary_key=True。
**2、CharField**  ---字符串字段 单行输入，用于较短的字符串，如要保存大量文本, 使用 TextField。必须 max_length 参数，django会根据这个参数在数据库层和校验层限制该字段所允许的最大字符数。
**3、BooleanField**  ---布尔类型=tinyint(1)  不能为空，Blank=True

**NullBooleanField**  ---允许为空的布尔类型  类似 BooleanField， 不过允许 NULL 作为其中一个选项。 推荐使用这个字段而不要用  BooleanField 加 null=True 选项。 admin 用一个选择框 　　　　<select> (三个可选择的值：  “Unknown”， “Yes” 和 “No” ) 来表示这种字段数据
**5、DateField**  ---日期类型 date  对于参数，auto_now = True 则每次更新都会更新这个时间；auto_now_add 则只是第一次创建添加，之后的更新不再改变。
**6、DateTimeField**  ---日期类型 datetime  同DateField的参数
**7、Decimal**  ---十进制小数类型 = decimal  必须指定整数位max_digits和小数位decimal_places
**8、EmailField**  ---字符串类型（正则表达式邮箱） =varchar  对字符串进行正则表达式  一个带有检查 Email 合法性的 CharField，不接受 maxlength 参数。
**9、FloatField**  ---浮点类型 = double  浮点型字段。 必须提供两个 参数， 参数描述：
max_digits：总位数(不包括小数点和符号）
decimal_places：小数位数。如：要保存最大值为 999 (小数点后保存2位)，你要这样定义字段：FloatField(…，max_digits=5，  decimal_places=2)，要保存最大值一百万(小数点后保存10位)的话，你要这样定义：FloatField(…，max_digits=19， decimal_places=10)
**10、IntegerField**  ---整形  用于保存一个整数
**11、BigIntegerField**  ---长整形

```
integer_field_ranges = {
    'SmallIntegerField': (-32768, 32767),
    'IntegerField': (-2147483648, 2147483647),
    'BigIntegerField': (-9223372036854775808, 9223372036854775807),
    'PositiveSmallIntegerField': (0, 32767),
    'PositiveIntegerField': (0, 2147483647),
}
```




**18、SmallIntegerField**  ---数字  数据库中的字段有：tinyint、smallint、int、bigint.  类似 IntegerField， 不过只允许某个取值范围内的整数。(依赖数据库)
**19、TextField**  ---字符串=longtext ，一个容量很大的文本字段， admin 管理界面用 <textarea>多行编辑框表示该字段数据。
**20、TimeField**  ---时间 HH:MM[:ss[.uuuuuu]]  时间字段，类似于 DateField 和 DateTimeField。
**21、URLField**  ---字符串，地址正则表达式  用于保存URL。若 verify_exists 参数为 True (默认)， 给定的 URL 会预先检查是否存在(即URL是否被有效装入且没有返回404响应).

**23、ImageField**  ---图片  类似 FileField，  不过要校验上传对象是否是一个合法图片。用于保存图像文件的字段。其基本用法和特性与FileField一样，只不过多了两个属性height和width。默认情况下，该字段在HTML中表现为一个ClearableFileInput标签。在数据库内，我们实际保存的是一个字符串类型，默认最大长度100，可以通过max_length参数自定义。真实的图片是保存在服务器的文件系统内的。
24.**height_field参数：**保存有图片高度信息的模型字段名。width_field参数：保存有图片宽度信息的模型字段名。
使用Django的ImageField需要提前安装pillow模块，pip install pillow即可。





**二、常用选项参数意义**

**1、null**  数据库中字段是否可以为空（null=True） 将null保存

​	**black** 代表为空 保存 ”“什么也没有

**2、db_column** 数据库中字段的列名(db_column="test")

**4、default** 数据库中字段的默认值
**5、primary_key** 数据库中字段是否为主键(primary_key=True)
**6、db_index** 数据库中字段是否可以建立索引(db_index=True)
**7、unique** 数据库中字段是否可以建立唯一索引(unique=True)
**8、unique_for_date** 数据库中字段【日期】部分是否可以建立唯一索引
**9、unique_for_month** 数据库中字段【月】部分是否可以建立唯一索引
**10、unique_for_year** 数据库中字段【年】部分是否可以建立唯一索引
**11、auto_now** 更新时自动更新当前时间
**12、auto_now_add** 创建时自动更新当前时间

**14、blankAdmin** 中是否允许用户输入为空表单提交时可以为空
**15、editableAdmin** 中是否可以编辑
**16、help_textAdmin** 中该字段的提示信息
**17choicesAdmin** 中显示选择框的内容，用不变动的数据放在内存中从而避免跨表操作

如：

```
sex=models.IntegerField(choices=[(0,'男'),(1,'女'),],default=1)
```

error_messages自定义错误信息（字典类型），从而定制想要显示的错误信息；
字典健：null,blank,invalid,invalid_choice,unique,andunique_for_date
如：{'null':"不能为空.",'invalid':'格式错误'}
**18、validators** 自定义错误验证（列表类型），从而定制想要的验证规则

```python
from django.core.validators import RegexValidator
from django.core.validators import EmailValidator,URLValidator,DecimalValidator,
MaxLengthValidator,MinLengthValidator,MaxValueValidator,MinValueValidator
如：
test = models.CharField(
    max_length=32,
    error_messages={
    'c1': '优先错信息1',
    'c2': '优先错信息2',
    'c3': '优先错信息3',
},
validators=[
    RegexValidator(regex='root_\d+', message='错误了', code='c1'),
    RegexValidator(regex='root_112233\d+', message='又错误了', code='c2'),
    EmailValidator(message='又错误了', code='c3'), ]
)
```

---



### 表关系

- 1:1
- 1：多
- 多：多










- ### 交互

- 

- ### 替换数据库


  - ```python
    1.在app下 init.py 初始化添加
    
    import pymysql
    pymysql.install_as_MySQLdb()
    
    2.在根目录setting.py 中的Databases中设置
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.sqlite3',# 设置数据库引擎
            'NAME': BASE_DIR / 'db.sqlite3', # 设置数据库名称
            'HOST': '127.0.0.1', # 数据库地址，本机 ip 地址 127.0.0.1
            'PORT': 3306, # 端口
            'USER': 'leanperlife',  # 数据库用户名
            'PASSWORD': 'password', # 数据库密码
        }
    }
    
    
    ```

    

  

### 9.0 django shell

- 集成django 环境的shell终端
- python manage.py shell 进入终端
- 



## 10. template模板

https://blog.csdn.net/zh18380113164/article/details/104938345

https://www.cnblogs.com/fungitive/p/9136121.html



聚合函数

```
p = Person.objects.aggregate(Max('s_age'))
```

Avg

Count

Sum

Max

Min



F

- 支持算数运算

- 一个模型不同属性操作运算

- ```
  Person.objects.filter(gride__gril_age__lt=F('gride__boy_age')-15)
  ```

Q

- 对现有条件进行封装 封装之后支持或且非

- ```
  g = Person.objects.filter(gride__g_person='小明').filter(p_age=10)
  Person.objects.filter(Q(gride__g_person='小明')&Q(p_age=10) )
  ```



## 11.模型成员

https://www.cnblogs.com/xidianzxm/p/12266971.html

显性属性

- 开发者手动写的属性

隐形属性

-  orm自动生成的属性
- 如果手动声明 则系统不会生成隐形属性



Modelmanager定制





多表查询

```

g = Person.objects.filter(gride__g_person='小明')
```







