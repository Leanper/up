

# QureySet API

#### 1.检索所有对象all()

使用all()方法，可以获取某张表的所有记录。返回当前QuerySet（或QuerySet子类）的副本。通常用于获取全部QuerySet对象。

```
def orm(requst):
    #获取所有文章，对应SQL：select * from Article
    all_article = models.Article.objects.all()
    all_article = models.Article.objects.all()[2:5] 
    print(all_article)
    return HttpResponse('orm')
```

保存之后，我们通过浏览器访问，然后查看 Terminal，看到我们的打印出来的查询结果，一共有四篇文章。

![1.jpg](https://www.django.cn/media/upimg/1_20180819213735_709.jpg)

查询出来的是一个QuerySet的对象。

#### 2.用filter过滤对象

filter(**kwargs)
返回满足查询参数的对象集合。
查找的参数（**kwargs）应该满足下文字段查找中的格式。多个参数之间是和AND的关系。

常用例子：

英文解释：

greater than大于

less than小于

 Less than or equal to 小于等于

greater than or equal to 大于等于

```
# 大于，>，对应SQL：select * from Article where id > 724
Article.objects.filter(id__gt=724)
# 大于等于，>=，对应SQL：select * from Article where id >= 724
Article.objects.filter(id__gte=724)
# 小于，<，对应SQL：select * from Article where id < 724
Article.objects.filter(id__lt=724)
# 小于等于，<=，对应SQL：select * from Article where id <= 724
Article.objects.filter(id__lte=724)
# 同时大于和小于， 1 < id < 10，对应SQL：select * from Article where id > 1 and id < 10
Article.objects.filter(id__gt=1, id__lt=10)

# 包含，in，对应SQL：select * from Article where id in (11,22,33)
Article.objects.filter(id__in=[11, 22, 33])
# 不包含，not in，对应SQL：select * from Article where id not in (11,22,33)
Article.objects.filter(pub_date__isnull=True)
# 不为空：isnull=False，对应SQL：select * from Article where pub_date is not null
Article.objects.filter(pub_date__isnull=True)

# 匹配，like，大小写敏感，对应SQL：select * from Article where name like '%sre%'，SQL中大小写不敏感
Article.objects.filter(name__contains="sre")
# 匹配，like，大小写不敏感，对应SQL：select * from Article where name like '%sre%'，SQL中大小写不敏感
Article.objects.filter(name__icontains="sre")
# 范围，between and，对应SQL：select * from Article where id between 3 and 8
Article.objects.filter(id__range=[3, 8])

# 以什么开头，大小写敏感，对应SQL：select * from Article where name like 'sh%'，SQL中大小写不敏感
Article.objects.filter(name__startswith='sre')
# 以什么开头，大小写不敏感，对应SQL：select * from Article where name like 'sh%'，SQL中大小写不敏感
Article.objects.filter(name__istartswith='sre')
# 以什么结尾，大小写敏感，对应SQL：select * from Article where name like '%sre'，SQL中大小写不敏感
Article.objects.filter(name__endswith='sre')
# 以什么结尾，大小写不敏感，对应SQL：select * from Article where name like '%sre'，SQL中大小写不敏感
Article.objects.filter(name__iendswith='sre')

# 排序，order by，正序，对应SQL：select * from Article where name = '关键词' order by id
Article.objects.filter(name='关键词').order_by('id')
# 多级排序，order by，先按name进行正序排列，如果name一致则再按照id倒叙排列
Article.objects.filter(name='关键词').order_by('name','-id')
# 排序，order by，倒序，对应SQL：select * from Article where name = '关键词' order by id desc
Article.objects.filter(name='关键词').order_by('-id')
```

#### **3、查询单一对象 get**

filter方法始终返回的是QuerySets，那怕只有一个对象符合过滤条件，返回的也是包含一个对象的QuerySets，这是一个集合类型对象，你可以简单的理解为Python列表，可迭代可循环可索引。
如果你确定你的检索只会获得一个对象，那么你可以使用get()方法来直接返回这个对象。get返回与所给筛选条件相匹配的对象，返回结果有且只有一个，如果符合筛选条件的对象超过一个或者没有都会抛出错误。

```
#查询ID=1的文章
Article.objects.get(id=1)
#等同
Article.objects.get(pk=1)
```

#### **4、查询不匹配条件的对象 exclude**

exclude(**kwargs)

返回一个新的QuerySet，它包含**不**满足给定的查找参数的对象。

查找的参数（**kwargs）应该满足下文字段查找中的格式。多个参数通过AND连接，然后所有的内容放入NOT() 中。

下面的示例**排除**所有created_time晚于2018-7-15**且**headline为“Hello” 的记录：

```
Article.objects.exclude(created_time__gt=datetime.date(2018,7,15), headline='Hello')
```

下面的示例**排除**所有`pub_date`晚于2005-1-3**或者**headline 为“Hello” 的记录：

```
Article.objects.exclude(created_time__gt=datetime.date(2018,7,15)).exclude(headline='Hello')
```

#### **5、查询返回一个字典 values**

返回一个ValueQuerySet，一个特殊的QuerySet，运行后得到的并不是一系列model的实例化对象，而是一个可迭代的字典序列。每个字典表示一个对象，键对应于模型对象的属性名称。

例：

```
#values()与普通的模型对象比较：
def orm(requst):
    article = models.Article.objects.filter(title__startswith='增加')
    article_values = models.Article.objects.filter(title__startswith='增加').values()
    print(article)
    print('----------------------------------------------')
    print(article_values)
    return HttpResponse('orm')
    
#打印结果  
<QuerySet [<Article: 增加标题一>, <Article: 增加标题二>]>
----------------------------------------------
<QuerySet [
{'id': 4, 'title': '增加标题一', 'intro': '', 'category_id': 3, 'body': '增加内容一', 'user_id': 1},
{'id': 6, 'title': '增加标题二', 'intro': '测试增加标题二', 'category_id': 4, 'body': '增加内容二', 'user_id': 2}
 ]>
 
#更多用法：
#不指定字段会获取所有字段的键和值
article_values_all = models.Article.objects.values()
#如果指定字段，每个字典将只包含指定的字段的键/值。
article_values_filter = models.Article.objects.values('id', 'title')

#values()方法还有关键字参数**expressions，这些参数将传递给annotate()注释
from django.db.models.functions import Lower
article_values=models.Article.objects.values(标题=Lower('title'))
<QuerySet [{'标题': '增加标题一'}, {'标题': '我被修改了'}, {'标题': '增加标题二'}]>

#聚合应用，统计作者下的文章数量
from django.db.models import Count
article_values_annotate = models.Article.objects.values('user').annotate(数量=Count('title'))
<QuerySet [{'user': 1, '数量': 3}, {'user': 2, '数量': 2}]>

#如果你有一个字段category是一个ForeignKey，默认的category_id参数返回的字典中将有一个叫做category的键，
#因为这是保存实际值的那个隐藏的模型属性的名称
#当调用category_id并传递字段的名称，传递category或values()都可以，得到的结果是相同的。
#像这样：
category=models.Article.objects.values('category')
category_id = models.Article.objects.values('category_id')
<QuerySet [{'category': 3}, {'category': 3}, {'category': 4}, {'category': 4}, {'category': 4}]>
<QuerySet [{'category_id': 3}, {'category_id': 3}, {'category_id': 4}, {'category_id': 4}, {'category_id': 4}]>
```

#### **6、查询返回一个元组 values_list**

values_list(*fields, flat=False)
与values()类似，只是在迭代时返回的是元组而不是字典。每个元组包含传递给values_list()调用的相应字段或表达式的值，因此第一个项目是第一个字段等。

看例子：

```
from django.db.models.functions import Lower
values_list=models.Article.objects.values_list('id','title')
values_list_lower = models.Article.objects.values_list('id', Lower('title'))
<QuerySet [(3, 'virtualenv使用技巧大全'), (4, '增加标题一'), (5, '我被修改了'), (6, '增加标题二')]>
<QuerySet [(3, 'virtualenv使用技巧大全'), (4, '增加标题一'), (5, '我被修改了'), (6, '增加标题二')]>
```

如果只传递一个字段，还可以传递flat参数。 如果为True，它表示返回的结果为单个值而不是元组。 如下所示：

```
values_list=models.Article.objects.values_list('id').order_by('id')
values_list_flat = models.Article.objects.values_list('id', flat=True).order_by('id')
<QuerySet [(2,), (3,), (4,), (5,), (6,)]>
<QuerySet [2, 3, 4, 5, 6]>
```

如果有多个字段，传递flat将发生错误。

#### 7、查询返回一个元组 order_by



order_by(*fields)
默认情况下，根据模型的Meta类中的ordering属性对QuerySet中的对象进行排序

```
article = models.Article.objects.filter(created_time__year=2018).order_by('-created_time', 'title')
```

上面的结果将按照created_time降序排序，然后再按照title升序排序。"-created_time"前面的负号表示降序顺序。 升序是默认的。 要随机排序，使用"?"，如下所示：

```
article = models.Article.objects.order_by('?')
```

注：order_by('?')可能耗费资源且很慢，这取决于使用的数据库。

若要按照另外一个模型中的字段排序，可以使用查询关联模型的语法。即通过字段的名称后面跟两个下划线（__），再加上新模型中的字段的名称，直到希望连接的模型。

```
article = models.Article.objects.order_by('category__name', 'title')
```

如果排序的字段与另外一个模型关联，Django将使用关联的模型的默认排序，或者如果没有指定Meta.ordering将通过关联的模型的主键排序。 例如，因为Blog模型没有指定默认的排序：

```
article = models.Article.objects.order_by('category')
#等于:
article = models.Article.objects.order_by('category__id')
```

如果Blog设置了ordering = ['name']，那么第一个QuerySet将等同于：

```
article = models.Article.objects.order_by('category__name')
```

还可以通过调用表达式的desc()或者asc()方法：

```
article = models.Article.objects.order_by(Coalesce('summary', 'title').desc())
```

#### **8、对查询结果反向排序 reverse**

反向排序QuerySet中返回的元素。 第二次调用reverse()将恢复到原有的排序。
如要获取QuerySet中最后三个元素，可以这样做：

```
my_queryset.reverse()[:3]
```

这与Python直接使用负索引有点不一样。 Django不支持负索引，只能曲线救国。

#### **9、从返回结果中剔除重复纪录 distinct**

distinct(*fields)
去除查询结果中重复的行。
默认情况下，QuerySet不会去除重复的行。当查询跨越多张表的数据时，QuerySet可能得到重复的结果，这时候可以使用distinct()进行去重。

#### **10、返回数据库中匹配查询(QuerySet)的对象数量 count**

**返回一个整数，该整数表示数据库中与QuerySet匹配的对象的数量。
**

**例子：
**

```
#返回数据库中的条目总数
article = models.Article.objects.count()
#返回标题中包含“增加”的条目数
article_filter = models.Article.objects.filter(title__contains='增加').count()
```

count()调用在幕后执行SELECT count(*)，因此您应该始终使用count()，而不是将所有记录加载到Python对象中，然后对结果调用len()(除非无论如何都需要将对象加载到内存中，在这种情况下，len()会更快)。
注意，如果您想要查询一个QuerySet中的项目数量，并且正在从它检索模型实例(例如，通过遍历它)，那么使用len(QuerySet)可能会更高效，因为它不会像count()那样导致额外的数据库查询。

#### **11、返回由queryset匹配的第一个对象 first\**()\****

返回由queryset匹配的第一个对象，如果没有匹配的对象，则返回None。如果QuerySet没有定义任何排序，那么QuerySet将由主键自动排序。



**例子：**

```
p = models.Article.objects.order_by('title', 'created_time').first()
#文章的'上一页'就是通过这个实现的
previous_blog = Article.objects.filter(created_time__gt=article_obj.created_time).first()
```

注意，first()是一种简洁的写法，下面的代码示例与上面的示例等价:

```
try:
    p = models.Article.objects.order_by('title', 'created_time')[0]
except IndexError:
    p = None
```

#### **12、返回最后一条记录last()**

与first()类似，它是返回queryset中的最后一个对象。

```
#文章下一页
netx_blog = Article.objects.filter(created_time__lt=article_obj.created_time).last()
```

**1****3、返回最后一条记录exists()** 

如果QuerySet包含数据，就返回True，否则返回False  ---只判断是否有记录



如果 `QuerySet` 包含任何结果，则返回 `True`，否则返回 `False`。这尽可能以最简单和最快的方式执行查询，但它确实执行与普通 `QuerySet` 查询几乎相同的查询。

`exists()` 对于与 `QuerySet` 中的对象成员资格以及 `QuerySet` 中的任何对象（特别是大型 `QuerySet` 的上下文）中存在的相关搜索都很有用。

查找具有唯一字段（例如 `primary_key`）的模型是否为 `QuerySet` 的成员的最有效方法是：

```
entry = Entry.objects.get(pk=123) if some_queryset.filter(pk=entry.pk).exists():     print("Entry contained in queryset")
```

这将比以下要求更快，需要对整个查询集进行评估和迭代：

```
if entry in some_queryset:    print("Entry contained in QuerySet")
```

查找查询集是否包含任何项目：

```
if some_queryset.exists():     print("There is at least one object in some_queryset")
```

这将比以下更快：

```
if some_queryset:     print("There is at least one object in some_queryset")
```

...但不是很大程度上（因此需要大量查询来提高效率）。

#### **14、使用提供的聚合表达式查询对象annotate()**

函数原型annotate(*args, **kwargs)，返回QuerySet。

表达式可以是简单的值、对模型（或任何关联模型）上的字段的引用或者聚合表达式（平均值、总和等）。

annotate()的每个参数都是一个annotation，它将添加到返回的QuerySet每个对象中。

关键字参数指定的Annotation将使用关键字作为Annotation 的别名。 匿名参数的别名将基于聚合函数的名称和模型的字段生成。 只有引用单个字段的聚合表达式才可以使用匿名参数。 其它所有形式都必须用关键字参数。

例如，如果正在操作一个Blog列表，你可能想知道每个Blog有多少Entry：

```
>>> from django.db.models import Count
>>> q = Blog.objects.annotate(Count('entry'))# The name of the first blog
>>> q[0].name'Blogasaurus'# The number of entries on the first blog
>>> q[0].entry__count
42
```

Blog模型本身没有定义`entry__count`属性，但是通过使用一个关键字参数来指定聚合函数，可以控制Annotation的名称：

```
>>> q = Blog.objects.annotate(number_of_entries=Count('entry'))
# The number of entries on the first blog, using the name provided
>>> q[0].number_of_entries
35
```

#### **15、根据日期获取查询集dates()** 

dates(field, kind, order='ASC')

返回一个QuerySet，表示QuerySet内容中特定类型的所有可用日期的`datetime.date`对象列表。

field参数是模型的DateField的名称。 kind参数应为"year"，"month"或"day"。 结果列表中的每个datetime.date对象被截取为给定的类型。

"year" 返回对应该field的所有不同年份值的列表。

"month"返回字段的所有不同年/月值的列表。

"day"返回字段的所有不同年/月/日值的列表。

order参数默认为'ASC'，或者'DESC'。 它指定如何排序结果。

例子：

```
>>> Entry.objects.dates('pub_date', 'year')
[datetime.date(2005, 1, 1)]
>>> Entry.objects.dates('pub_date', 'month')
[datetime.date(2005, 2, 1), datetime.date(2005, 3, 1)]
>>> Entry.objects.dates('pub_date', 'day')
[datetime.date(2005, 2, 20), datetime.date(2005, 3, 20)]
>>> Entry.objects.dates('pub_date', 'day', order='DESC')
[datetime.date(2005, 3, 20), datetime.date(2005, 2, 20)]
>>> Entry.objects.filter(headline__contains='Lennon').dates('pub_date', 'day')
[datetime.date(2005, 3, 20)]
```

#### **16、根据时间获取查询集datetimes()**

datetimes(field_name, kind, order='ASC', tzinfo=None)

返回QuerySet，为datetime.datetime对象的列表，表示QuerySet内容中特定种类的所有可用日期。

`field_name`应为模型的DateTimeField的名称。

kind参数应为"hour"，"minute"，"month"，"year"，"second"或"day"。

结果列表中的每个datetime.datetime对象被截取到给定的类型。

order参数默认为'ASC'，或者'DESC'。 它指定如何排序结果。

tzinfo参数定义在截取之前将数据时间转换到的时区。

#### **17、 创建空的查询集none()**

调用none()将创建一个不返回任何对象的查询集，并且在访问结果时不会执行任何查询。

例子：

```
>>> Entry.objects.none()<QuerySet []
>>>> from django.db.models.query import EmptyQuerySet
>>> isinstance(Entry.objects.none(), EmptyQuerySet)True
```

#### **18、并集union()**

union(*other_qs, all=False)

Django中的新功能1.11。也就是集合中并集的概念！

使用SQL的UNION运算符组合两个或更多个QuerySet的结果。例如：

```
>>> qs1.union(qs2, qs3)
```

默认情况下，UNION操作符仅选择不同的值。 要允许重复值，请使用all=True参数。

#### **19、交集intersection()**

intersection(*other_qs)

Django中的新功能1.11。也就是集合中交集的概念！

使用SQL的INTERSECT运算符返回两个或更多个QuerySet的共有元素。例如：

```
>>> qs1.intersection(qs2, qs3)
```

#### **21、差集difference()**

difference(*other_qs)

Django中的新功能1.11。也就是集合中差集的概念！

使用SQL的EXCEPT运算符只保留QuerySet中的元素，但不保留其他QuerySet中的元素。例如：

```
>>> qs1.difference(qs2, qs3)
```

#### **22、附带查询关联对象select_related()**

select_related(*fields)

沿着外键关系查询关联的对象的数据。这会生成一个复杂的查询并引起性能的损耗，但是在以后使用外键关系时将不需要再次数据库查询。

下面的例子解释了普通查询和`select_related()`查询的区别。 下面是一个标准的查询：

```
# 访问数据库。
e = Entry.objects.get(id=5)
# 再次访问数据库以得到关联的Blog对象。
b = e.blog
```

下面是一个`select_related`查询：

```
# 访问数据库。
e = Entry.objects.select_related('blog').get(id=5)
# 不会访问数据库，因为e.blog已经在前面的查询中获得了。
b = e.blog
```

`select_related()`可用于objects任何的查询集：

```
from django.utils import timezone

# Find all the blogs with entries scheduled to be published in the future.
blogs = set()

for e in Entry.objects.filter(pub_date__gt=timezone.now()).select_related('blog'):
    # 没有select_related()，下面的语句将为每次循环迭代生成一个数据库查询,以获得每个entry关联的blog。
    blogs.add(e.blog)
```

`filter()`和`select_related()`的顺序不重要。 下面的查询集是等同的：

```
Entry.objects.filter(pub_date__gt=timezone.now()).select_related('blog')
Entry.objects.select_related('blog').filter(pub_date__gt=timezone.now())
```

可以沿着外键查询。 如果有以下模型：

```
from django.db import modelsclass City(models.Model):
    # ...
    passclass Person(models.Model):
    # ...
    hometown = models.ForeignKey(
        City,
        on_delete=models.SET_NULL,
        blank=True,
        null=True,
    )class Book(models.Model):
    # ...
    author = models.ForeignKey(Person, on_delete=models.CASCADE)
```

调用`Book.objects.select_related('author__hometown').get(id=4)`将缓存相关的Person 和相关的City：

```
b = Book.objects.select_related('author__hometown').get(id=4)
p = b.author         # Doesn't hit the database.
c = p.hometown       # Doesn't hit the database.
b = Book.objects.get(id=4) # No select_related() in this example.
p = b.author         # Hits the database.
c = p.hometown       # Hits the database.
```

在传递给`select_related()`的字段中，可以使用任何ForeignKey和OneToOneField。

在传递给`select_related`的字段中，还可以反向引用OneToOneField。也就是说，可以回溯到定义OneToOneField 的字段。 此时，可以使用关联对象字段的`related_name`，而不要指定字段的名称。

#### **23、预先查询prefetch_related()**

prefetch_related(*lookups)

在单个批处理中自动检索每个指定查找的相关对象。

与`select_related`类似，但是策略是完全不同的。

假设有这些模型：

```
from django.db import modelsclass Topping(models.Model):
    name = models.CharField(max_length=30)class Pizza(models.Model):
    name = models.CharField(max_length=50)
    toppings = models.ManyToManyField(Topping)

    def __str__(self):              # __unicode__ on Python 2
        return "%s (%s)" % (
            self.name,
            ", ".join(topping.name for topping in self.toppings.all()),
        )
```

并运行：

```
>>> Pizza.objects.all()
["Hawaiian (ham, pineapple)", "Seafood (prawns, smoked salmon)"...
```

问题是每次QuerySet要求`Pizza.objects.all()`查询数据库，因此`self.toppings.all()`将在`Pizza Pizza.__str__()`中的每个项目的Toppings表上运行查询。

可以使用`prefetch_related`减少为只有两个查询：

```
>>> Pizza.objects.all().prefetch_related('toppings')
```

这意味着现在每次`self.toppings.all()`被调用，不会再去数据库查找，而是在一个预取的QuerySet缓存中查找。

还可以使用正常连接语法来执行相关字段的相关字段。 假设在上面的例子中增加一个额外的模型：

```
class Restaurant(models.Model):
    pizzas = models.ManyToManyField(Pizza, related_name='restaurants')
    best_pizza = models.ForeignKey(Pizza, related_name='championed_by')
```

以下是合法的：

```
>>> Restaurant.objects.prefetch_related('pizzas__toppings')
```

这将预取所有属于餐厅的比萨饼，和所有属于那些比萨饼的配料。 这将导致总共3个查询 - 一个用于餐馆，一个用于比萨饼，一个用于配料。

```
>>> Restaurant.objects.prefetch_related('best_pizza__toppings')
```

这将获取最好的比萨饼和每个餐厅最好的披萨的所有配料。 这将在3个表中查询 - 一个为餐厅，一个为“最佳比萨饼”，一个为一个为配料。

当然，也可以使用`best_pizza`来获取`select_related`关系，以将查询数减少为2：

```
>>> Restaurant.objects.select_related('best_pizza').prefetch_related('best_pizza__toppings')
```

#### **24、附加SQL查询extra()**

extra(select=None, where=None, params=None, tables=None, order_by=None, select_params=None)

有些情况下，Django的查询语法难以简单的表达复杂的WHERE子句，对于这种情况,可以在extra()生成的SQL从句中注入新子句。使用这种方法作为最后的手段，这是一个旧的API，在将来的某个时候可能被弃用。仅当无法使用其他查询方法表达查询时才使用它。

例如：

```
>>> qs.extra(
...     select={'val': "select col from sometable where othercol = %s"},
...     select_params=(someparam,),
... )
```

相当于：

```
>>> qs.annotate(val=RawSQL("select col from sometable where othercol = %s", (someparam,)))
```

#### **25、不加载指定字段defer()**

defer(*fields)

在一些复杂的数据建模情况下，模型可能包含大量字段，其中一些可能包含大尺寸数据（例如文本字段），将它们转换为Python对象需要花费很大的代价。

当最初获取数据时不知道是否需要这些特定字段的情况下，如果正在使用查询集的结果，可以告诉Django不要从数据库中检索它们。

通过传递字段名称到defer()实现不加载：

```
Entry.objects.defer("headline", "body")
```

具有延迟加载字段的查询集仍将返回模型实例。

每个延迟字段将在你访问该字段时从数据库中检索（每次只检索一个，而不是一次检索所有的延迟字段）。

可以多次调用defer()。 每个调用都向延迟集添加新字段：

```
# 延迟body和headline两个字段。
Entry.objects.defer("body").filter(rating=5).defer("headline")
```

字段添加到延迟集的顺序无关紧要。对已经延迟的字段名称再次defer()没有问题（该字段仍将被延迟）。

可以使用标准的双下划线符号来分隔关联的字段，从而加载关联模型中的字段：

```
Blog.objects.select_related().defer("entry__headline", "entry__body")
```

如果要清除延迟字段集，将None作为参数传递到defer()：

```
# 立即加载所有的字段。
my_queryset.defer(None)
```

defer()方法（及其兄弟，only()）仅适用于高级用例，它们提供了数据加载的优化方法。

#### **26、只加载指定的字段only()**

only(*fields)

only()方法与defer()相反。

如果有一个模型几乎所有的字段需要延迟，使用only()指定补充的字段集可以使代码更简单。

假设有一个包含字段biography、age和name的模型。 以下两个查询集是相同的，就延迟字段而言：

```
Person.objects.defer("age", "biography")
Person.objects.only("name")
```

每当你调用only()时，它将替换立即加载的字段集。因此，对only()的连续调用的结果是只有最后一次调用的字段被考虑：

```
# This will defer all fields except the headline.
Entry.objects.only("body", "rating").only("headline")
```

由于defer()以递增方式动作（向延迟列表中添加字段），因此你可以结合only()和defer()调用：

```
# Final result is that everything except "headline" is deferred.
Entry.objects.only("headline", "body").defer("body")
# Final result loads headline and body immediately (only() replaces any
# existing set of fields).
Entry.objects.defer("body").only("headline", "body")
```

当对具有延迟字段的实例调用save()时，仅保存加载的字段。

#### **27、选择数据库using()**

using(alias)

如果正在使用多个数据库，这个方法用于指定在哪个数据库上查询QuerySet。方法的唯一参数是数据库的别名，定义在DATABASES。

例如：

```
# queries the database with the 'default' alias.
>>> Entry.objects.all()
# queries the database with the 'backup' alias
>>> Entry.objects.using('backup')
```

#### **28、锁住选择的对象，直到事务结束。select_for_update()** 

elect_for_update(nowait=False, skip_locked=False)

返回一个锁住行直到事务结束的查询集，如果数据库支持，它将生成一个`SELECT ... FOR UPDATE`语句。

例如：

```
entries = Entry.objects.select_for_update().filter(author=request.user)
```

所有匹配的行将被锁定，直到事务结束。这意味着可以通过锁防止数据被其它事务修改。

一般情况下如果其他事务锁定了相关行，那么本查询将被阻塞，直到锁被释放。使用`select_for_update(nowait=True)`将使查询不阻塞。如果其它事务持有冲突的锁,那么查询将引发`DatabaseError`异常。也可以使用`select_for_update(skip_locked=True)`忽略锁定的行。nowait和`skip_locked`是互斥的。

目前，postgresql，oracle和mysql数据库后端支持`select_for_update()`。但是，MySQL不支持nowait和`skip_locked`参数。

#### **29、接收一个原始的SQL查询raw()**

raw(raw_query, params=None, translations=None)

接收一个原始的SQL查询，执行它并返回一个`django.db.models.query.RawQuerySet`实例。

这个RawQuerySet实例可以迭代，就像普通的QuerySet一样。





# ORM QuerySet查询

参考链接：https://www.django.cn/course/show-31.html



一旦创建了数据模型，Django 就会自动为您提供一个数据库抽象 API，使您可以创建，检索，更新和删除对象。本文档介绍了如何使用此 API。

在本指南（和参考文献）中，我们将参考以下模型，它们构成了一个 Weblog 应用程序：

```
 from django.db import models

class Blog(models.Model):
    name = models.CharField(max_length=100)
    tagline = models.TextField()

    def __str__(self):
        return self.name

class Author(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField()

    def __str__(self):
        return self.name

class Entry(models.Model):
    blog = models.ForeignKey(Blog, on_delete=models.CASCADE)
    headline = models.CharField(max_length=255)
    body_text = models.TextField()
    pub_date = models.DateField()
    mod_date = models.DateField()
    authors = models.ManyToManyField(Author)
    n_comments = models.IntegerField()
    n_pingbacks = models.IntegerField()
    rating = models.IntegerField()

    def __str__(self):
        return self.headline
```

## 创建对象

为了在 Python 对象中表示数据库表数据，Django 使用直观的系统：模型类表示数据库表，该类的实例表示数据库表中的特定记录。

要创建一个对象，请使用模型类的关键字参数对其进行实例化，然后调用 `save()` 以将其保存到数据库。

假设模型存在于文件 `mysite/blog/models.py` 中，下面是一个例子：

```
>>> from blog.models import Blog
>>> b = Blog(name='Beatles Blog', tagline='All the latest Beatles news.')
>>> b.save()
```

幕后执行 SQL 语句 INSERT 。 在你没有调用 `save()` 方法之前， Django 不会将数据保存到数据库

`save()` 方法没有返回值。

## 保存对对象的更改

要保存对已存在于数据库中的对象的更改，请使用 `save()`。

给定一个已经保存到数据库的 `Blog` 实例 `b5`，这个例子改变它的名字并更新数据库中的记录：

```
>>> b5.name = 'New name'
>>> b5.save()
```

幕后执行 SQL 语句 UPDATE 。 在你没有调用 `save()` 方法之前， Django 不会将数据保存到数据库

### 保存 ForeignKey 和 ManyToManyField 字段

更新 ForeignKey 字段的方式与保存普通字段的方式完全相同 -- 只需将正确类型的对象分配给相关字段即可。

```
>>> from blog.models import Blog, Entry 
>>> entry = Entry.objects.get(pk=1)
>>> cheese_blog = Blog.objects.get(name="Cheddar Talk") 
>>> entry.blog = cheese_blog 
>>> entry.save()
```

还可以通过 `add()` 方法：

```
>>> from blog.models import Author 
>>> joe = Author.objects.create(name="Joe") 
>>> entry.authors.add(joe)
```

要一次添加多个记录：

```
>>> john = Author.objects.create(name="John") 
>>> paul = Author.objects.create(name="Paul") 
>>> george = Author.objects.create(name="George") 
>>> ringo = Author.objects.create(name="Ringo") 
>>> entry.authors.add(john, paul, george, ringo)
```

## 检索对象

要从数据库中检索对象，请在您的模型类上通过 `Manager` 构建一个 `QuerySet`。

`QuerySet` 表示数据库中的对象集合。它可以有零个，一个或多个过滤器。过滤器根据给定的参数缩小查询结果的范围。在 SQL 术语中，`QuerySet` 等同于 SELECT 语句，过滤器是限制性子句，如 WHERE 或 LIMIT。

您可以使用模型的 `Manager` 获取 `QuerySet`。每个模型至少有一个 `Manager`，默认情况下是 `objects`。通过模型类直接访问它，如下所示：

```
>>> Blog.objects <django.db.models.manager.Manager object at ...> 
>>> b = Blog(name='Foo', tagline='Bar') 
>>> b.objects Traceback:     
... AttributeError: "Manager isn't accessible via Blog instances."
```

Managers 只能通过模型类访问，而不能从模型实例访问。

`Manager` 是模型的 `QuerySet` 的主要来源。例如，`Blog.objects.all()` 返回包含数据库中所有 `Blog` 对象的 `QuerySet`。

### 检索所有对象

从表中检索对象的最简单方法是获取所有对象。为此，请使用 `Manager` 上的 `all()` 方法：

```
>>> all_entries = Entry.objects.all()
```

`all()` 方法返回数据库中所有对象的 `QuerySet`。

### 使用过滤器检索特定的对象

```
filter(**kwargs)
```

返回包含匹配给定查找参数的对象的新 `QuerySet`。

```
exclude(**kwargs)
```

返回包含与给定查找参数不匹配的对象的新 `QuerySet`。

例如，要获取从 2006 年开始的博客条目的 `QuerySet`，请使用 `filter()`，如下所示：

```
Entry.objects.filter(pub_date__year=2006)
```

使用默认 manager 类，它与以下内容相同：

```
Entry.objects.all().filter(pub_date__year=2006)
```

#### 链式过滤器

改进 `QuerySet` 的结果本身就是一个 `QuerySet`，因此可以将改进链接在一起。例如：

```
>>> Entry.objects.filter( ...     headline__startswith='What' ... ).exclude( ...     pub_date__gte=datetime.date.today() ... ).filter( ...     pub_date__gte=datetime.date(2005, 1, 30) ... )
```

#### 过滤后的 `QuerySet` 是独一无二的

每次您完善 `QuerySet` 时，都会获得全新的 `QuerySet`，它绝不会绑定到以前的 `QuerySet`。每个优化都会创建一个独立且不同的 `QuerySet` ，可以存储，使用和重用。

举例：

```
>>> q1 = Entry.objects.filter(headline__startswith="What") 
>>> q2 = q1.exclude(pub_date__gte=datetime.date.today()) 
>>> q3 = q1.filter(pub_date__gte=datetime.date.today())
```

#### QuerySet 会延迟查询(lazy)

`QuerySets` 是懒惰的 -- 创建 `QuerySet` 的行为不涉及任何数据库活动。您可以将过滤器堆叠在一起，并且在使用 `QuerySet` 之前，Django 不会真正运行查询。看看这个例子：

```
>>> q = Entry.objects.filter(headline__startswith="What") 
>>> q = q.filter(pub_date__lte=datetime.date.today()) 
>>> q = q.exclude(body_text__icontains="food") 
>>> print(q)
```

看起来像是操作了三次数据库，实际上只有在执行 `print(p)` 时才会真正执行一次数据库查询操作。

### 用 get() 检索单个对象

`filter()` 总是返回一个 `QuerySet`，即使匹配的对象只有一个。

如果你知道只有一个对象和查询匹配，则可以直接使用 `get()` 方法返回单个对象：

```
>>> one_entry = Entry.objects.get(pk=1)
```

请注意，`get()` 方法如果没有查找到对象，将引发 `DoesNotExist` 异常。查询到多个对象则会引发 `MultipleObjectReturned` 异常，这两个异常都是模型类的一个属性。

### 截取 QuerySet

可以使用 Python 中的切片语法对 `QuerySet` 的数量进行限制。这相当于 SQL LIMIT 和 OFFSET 子句。

例如，返回前 5 个对象（`LIMIT 5`）。

```
>>> Entry.objects.all()[:5]
```

返回第六到第十个对象（`OFFSET 5 LIMIT 5`）。

```
>>> Entry.objects.all()[5:10]
```

不支持负数索引（例如 `Entry.objects.all()[-1]`）。

通常切片一个 `QuerySet` 会返回一个新的 `QuerySet`，但这不会真的执行数据库操作。但是如果使用了 `step` 切片语法 例如下面这样，则是会执行数据库操作的：

```
>>> Entry.objects.all()[:10:2]
```

由于切片的工作原理是模糊的，所以禁止对切片后的 `queryset` 进行进一步的过滤或排序。

要检索单个对象而不是列表时，请使用下标索引而不是切片，例如：

```
>>> Entry.objects.order_by('headline')[0]
```

这大致相当于：

```
>>> Entry.objects.order_by('headline')[0:1].get()
```

请注意，如果没有检索到对应的对象，前者会引发 `indexError`，后者会引发 `DoesNotExist`。

### 字段查找

字段查找是指你如何指定 SQL WHERE 子句。它们被指定为 `QuerySet` 方法 `filter()`，`exclude()` 和 `get()` 的关键字参数。

基本查找关键字参数大概像 `field__lookuptype=value`（中间是一个双下划线）。例如：

```
>>> Entry.objects.filter(pub_date__lte='2006-01-01')
```

将（大致）转换为以下 SQL：

```
SELECT * FROM blog_entry WHERE pub_date <= '2006-01-01';
```

在查找中指定的字段必须是模型字段的名称。但是有一个例外，在使用 `ForeignKey` 的情况下，你可以指定带 `_id` 后缀的字段名称。在这种情况下， value 参数应该包含外部模型主键的原始值。例如：

```
>>> Entry.objects.filter(blog_id=4)
```

如果您传递了无效的关键字参数，则会引发 `TypeError`。

一些常见的查询术语：

```
exact
```

精确匹配，例如：

```
>>> Entry.objects.get(headline__exact="Cat bites dog")
```

将（大致）转换为以下 SQL：

```
SELECT ... WHERE headline = 'Cat bites dog';
```

如果您不提供查找术语 -- 也就是说，如果您的关键字参数不包含双下划线 -- 则查找类型被假定为 `exact`。

例如，以下两条语句是等价的：

```
>>> Blog.objects.get(id__exact=14)  # Explicit form >>> Blog.objects.get(id=14)         # __exact is implied
```

这是为了方便，因为 `exact` 查找是最常见的情况。

```
iexact
```

不区分大小写的匹配。所以，查询：

```
>>> Blog.objects.get(name__iexact="beatles blog")
```

将匹配 `name` 为 `"Beatles Blog"` ，`"beatles blog"` 甚至是 `"BeAtlES blOG"` 的 `Blog` 对象。

```
contains
Entry.objects.get(headline__contains='Lennon')
```

将（大致）转换为以下 SQL：

```
SELECT ... WHERE headline LIKE '%Lennon%';
```

请注意，这将匹配 `'Today Lennon honored'` 而不会匹配 `'today lennon honored'`。

还有一个不区分大小写的版本 `icontains`。

```
startswith`, `endswith
```

分别匹配开始和结尾部分。也有不区分大小写的版本 `istartswith` 和 `iendswith`。

### 跨越关系查找

Django 提供了一种强大且直观的方式来在查找中 “追踪” 关系，在幕后自动为您处理 SQL JOIN。要跨越关系，只需使用模型中相关字段的字段名称（用双下划线分隔），直到您到达所需的字段。

本示例使用 `name` 为 `'Beatles Blog'` 的 `Blog` 检索所有 `Entry` 对象：

```
>>> Entry.objects.filter(blog__name='Beatles Blog')
```

这种跨越可以尽可能的深入。

它也可以倒退。要引用“反向”关系，只需使用模型的小写名称即可。

此示例检索所有至少有一个 `headline` 包含 `'Lennon'` 的 `Entry` 的 `Blog` 对象：

```
>>> Blog.objects.filter(entry__headline__contains='Lennon')
```

如果您要跨多个关系进行筛选，并且其中一个中间模型的值不符合筛选条件，Django 会把它看作是空的（所有的值都是 `NULL`），但是它是有效的，在那里有对象。所有这一切意味着不会出现任何错误。例如，在这个过滤器中：

```
Blog.objects.filter(entry__authors__name='Lennon')
```

（如果有相关的 `Author` 模型），如果没有 `Author` 与某个条目相关联，则会将其视为没有附加 `name`，而不是由于缺少 `Author` 而引发错误。通常这正是你希望的结果。唯一可能引起混淆的情况是如果你使用 `isnull`。从而：

```
Blog.objects.filter(entry__authors__name__isnull=True)
```

将返回 `Author` 上具有空 `name` 的 `Blog` 对象以及 `entry` 上具有空 `Author` 的 `Blog` 对象。如果你不想要后者，你可以这样写：

```
Blog.objects.filter(entry__authors__isnull=False, entry__authors__name__isnull=True)
```

#### 跨越多值关系

当您基于 `ManyToManyField` 或反向 `ForeignKey` 过滤对象时，您可能会感兴趣的是两种不同类型的过滤器。考虑 `Blog`/`Entry` 关系（`Blog` to `Entry` 是一对多的关系）。我们可能会感兴趣的是找到一个有 `entry` 的 `blog`，`headline` 中有 `“Lennon”`，并于 2008 年发表。或者，我们可能想要找到在 `headline` 中有 `“Lennon”` `entry` 的 `blog`，以及 2008 年发表的一篇文章。由于有多个 `entry` 与单个 `Blog` 相关联，所以这些查询都是可能的，并且在某些情况下是有意义的。

同样的情况也出现在 `ManyToManyField` 上。例如，如果一个 `Entry` 有一个 `ManyToManyField` 的 `tags`，我们可能想要找到链接到名为 “music” 和 “bands” 的 `tag` 的 `entry`，或者我们可能需要包含 `name` 为 “music” 和 状态为 “public” 的 `tag` 的 `entry`。

为了处理这两种情况，Django 拥有一致的处理 `filter()` 调用的方法。同时应用单个 `filter()` 调用中的所有内容以筛选出满足所有这些要求的项目。连续的 `filter()` 调用进一步限制了对象集合，但对于多值关系，它们适用于链接到主模型的任何对象，而不一定是由较早的 `filter()` 调用选择的那些对象。

这听起来有点令人困惑，所以希望有一个例子可以说明。要选择包含 `headline` 为 “Lennon” 并且在 2008 年发布的 `entry`（满足这两个条件的同一 `entry`）的所有 `blog`，我们会写：

```
Blog.objects.filter(entry__headline__contains='Lennon', entry__pub_date__year=2008)
```

要选择 `headline` 中包含 “Lennon” `entry` 的所有 `blog` 以及 2008 年发表的 `entry`，我们将编写：

```
Blog.objects.filter(entry__headline__contains='Lennon').filter(entry__pub_date__year=2008)
```

假设只有一个 `blog` 有包含 “Lennon” 的 `entry` 和 2008 年的 `entry` ，但是 2008 年的 `entry` 中没有一个包含 “Lennon”。第一个查询不会返回任何 `blog`，但第二个查询将返回该 `blog`。

在第二个示例中，第一个过滤器将查询集限制为链接到 `headline` 中带有 “Lennon”  `entry` 的所有 `blog`。第二个过滤器将这组 `blog` 进一步限制为那些也链接到 2008 年发布的 `entry` 的 `blog`。第二个过滤器选择的 `entry` 可能与第一个过滤器中的 `entry` 相同或不同。我们使用每个过滤器语句过滤 `Blog` item，而不是 `Entry` item。

如上所述，跨越多值关系的查询的 `filter()` 行为对于 `exclude()` 不等效。相反，单个 `exclude()` 调用中的条件不一定引用相同的 item。

例如，以下查询将排除同时包含 2008 年发布的 `entry` 和 `headline` 中包含 “Lennon” `entry` 的 `blog`：

```
Blog.objects.exclude(
    entry__headline__contains='Lennon',
    entry__pub_date__year=2008,
)
```

但是，与使用 `filter()` 时的行为不同，这不会限制基于满足这两个条件的 `entry` 的 `blog`。为了做到这一点，例如，选择所有不包含 2008 年出版的 “Lennon” `entry` 的 `blog`，你需要做两个查询：

```
Blog.objects.exclude(
    entry__in=Entry.objects.filter(
        headline__contains='Lennon',
        pub_date__year=2008,
    ),
)
```

### 过滤器可以引用模型上的字段

在迄今为止给出的例子中，我们构建了一个过滤器，它将模型字段的值与常量进行比较。但是如果您想要将模型字段的值与同一模型中的另一个字段进行比较呢？

Django提供了 F 表达式 来允许这样的比较。`F()` 的实例充当对查询中的模型字段的引用。然后可以在查询过滤器中使用这些引用来比较同一模型实例上两个不同字段的值。

例如，要查找比 `pingbacks` 有更多注释的所有 `blog` `entry` 的列表，我们构造一个 `F()` 对象来引用 `pingback` 计数，并在查询中使用该 `F()` 对象：

```
>>> from django.db.models import F 
>>> Entry.objects.filter(n_comments__gt=F('n_pingbacks'))
```

Django 支持对 `F()` 对象使用常量和其他 `F()` 对象的加法，减法，乘法，除法，模和幂运算。为了找到所有比 `pingbacks` 多两倍的评论，我们修改查询：

```
>>> Entry.objects.filter(n_comments__gt=F('n_pingbacks') * 2)
```

要查找 `entry` 评级小于 `pingback` 计数和评论计数总和的所有条目，我们将发出查询：

```
>>> Entry.objects.filter(rating__lt=F('n_comments') + F('n_pingbacks'))
```

您还可以使用双下划线表示法来跨越 `F()` 对象中的关系。具有双下划线的 `F()` 对象将引入访问相关对象所需的任何连接。例如，要检索作者姓名与博客名称相同的所有条目，我们可以发出查询：

```
>>> Entry.objects.filter(authors__name=F('blog__name'))
```

对于 date 和 date/time 字段，可以添加或减去 `timedelta` 对象。以下内容将返回发布后超过 3 天修改的所有 `entry`：

```
>>> from datetime import timedelta 
>>> Entry.objects.filter(mod_date__gt=F('pub_date') + timedelta(days=3))
```

`F()` 对象支持 `.bitand()`，`.bitor()`，`.bitrightshift()` 和 `.bitleftshift()` 的按位运算。例如：

```
>>> F('somefield').bitand(16)
```

### 通过 pk 查找

为了方便起见，Django 提供了一个 pk 查找快捷方式，代表 "primary key"。

在示例 Blog 模型中，primary key 是 id 字段，所以这三个语句是等同的：

```
>>> Blog.objects.get(id__exact=14) # Explicit form 
>>> Blog.objects.get(id=14) # __exact is implied 
>>> Blog.objects.get(pk=14) # pk implies id__exact
```

pk 的使用不限于 `__exact` 查询 -- 任何查询术语都可以与 pk 结合来对模型的主键执行查询：

```
# Get blogs entries with id 1, 4 and 7 
>>> Blog.objects.filter(pk__in=[1,4,7]) # Get all blog entries with id > 14 
>>> Blog.objects.filter(pk__gt=14)
```

pk 查找也可以在连接中使用。例如，这三个语句是等同的：

```
>>> Entry.objects.filter(blog__id__exact=3) # Explicit form 
>>> Entry.objects.filter(blog__id=3)        # __exact is implied 
>>> Entry.objects.filter(blog__pk=3)        # __pk implies __id__exact
```

### 在 LIKE 语句中转义百分号和下划线

等同于  LIKE SQL 语句（iexact，contains，icontains，startswith，istartswith，endswith 和  iendswith）的字段查找将自动转义为 LIKE 语句中使用的两个特殊字符 -- 百分号和下划线。（在 LIKE  语句中，百分号表示多字符通配符，下划线表示单字符通配符。）

这意味我们可以专注于业务逻辑，而不用考虑 SQL 语法。例如，要检索包含百分号的所有条目，只需要直接使用百分号：

```
>>> Entry.objects.filter(headline__contains='%')
```

Django 生成的 SQL 将如下所示：

```
SELECT ... WHERE headline LIKE '%\%%';
```

下划线也是如此。

### 缓存和 QuerySet

每个 `QuerySet` 都包含一个缓存以最大限度地减少数据库访问。了解它的工作原理将使您能够编写最高效的代码。

在新创建的 `QuerySet` 中，缓存为空。当 `QuerySet` 第一次被使用 -- 并因此发生数据库查询 -- Django 将查询结果保存在 `QuerySet` 的缓存中，并返回已明确请求的结果（例如，如果 `QuerySet` 正在迭代，则返回下一个元素）。随后对 `QuerySet` 的操作重新使用缓存的结果。

如果没有正确使用 `QuerySet` ，它可能会消耗里的资源。比如以下方式将创建两个 `QuerySet` ，对其进行操作，之后丢弃它们：

```
>>> print([e.headline for e in Entry.objects.all()]) 
>>> print([e.pub_date for e in Entry.objects.all()])
```

这意味着相同的数据库查询将执行两次，显著地加倍了数据库负载。另外，这两个列表可能不包含相同的数据库记录，因为在两个请求之间可能已经添加或删除了一个 `Entry`。

为了避免这个问题，只需保存 `QuerySet` 并重用它：

```
>>> queryset = Entry.objects.all() 
>>> print([p.headline for p in queryset]) # Evaluate the query set. 
>>> print([p.pub_date for p in queryset]) # Re-use the cache from the evaluation.
```

#### 当 QuerySet 没有被缓存时

查询集并不总是缓存它们的结果。在仅操作部分查询集时，会检查缓存，但如果未填充，则后续查询返回的项不会被缓存。具体而言，这意味着使用数组切片或索引截取查询集不会填充缓存。

例如，重复获取 `queryset` 对象中的某个索引将每次查询数据库：

```
>>> queryset = Entry.objects.all() 
>>> print(queryset[5]) # Queries the database 
>>> print(queryset[5]) # Queries the database again
```

但是，如果整个查询集已经被执行（读取使用过），记录将被缓存：

```
>>> queryset = Entry.objects.all() 
>>> [entry for entry in queryset] # Queries the database 
>>> print(queryset[5]) # Uses cache 
>>> print(queryset[5]) # Uses cache
```

以下是将导致整个查询集被使用并因此填充缓存的其他操作的一些示例：

```
>>> [entry for entry in queryset] 
>>> bool(queryset) 
>>> entry in queryset 
>>> list(queryset)
```

简单地打印查询集不会填充缓存。这是因为调用 `__repr__()` 仅返回整个查询集的一部分。

## 使用 Q 对象进行复杂查询

在 `filter()` 中使用多个关键字参数查询，对应到数据库中是使用 `AND` 连接起来的。如果你想使用更复杂的查询（例如，使用 `OR` 语句的查询），可以使用 `Q` 对象。

`Q` 对象（`django.db.models.Q`）是一个用于封装关键字参数集合的对象。这些关键字参数在上面的 “字段查找” 中指定。

例如，这个 `Q` 对象封装了一个 `LIKE` 查询：

```
from django.db.models import Q Q(question__startswith='What')
```

`Q` 对象可以使用 `＆` 和 `|` 进行组合运算。当一个操作符用于两个 `Q` 对象时，它会生成一个新的 `Q` 对象。

例如，这个语句产生一个 `Q` 对象，它表示两个 `"question__startswith"` 查询的 `"OR"`：

```
Q(question__startswith='Who') | Q(question__startswith='What')
```

这相当于以下 SQL WHERE 子句：

```
WHERE question LIKE 'Who%' OR question LIKE 'What%'
```

通过将 `Q` 对象与 `＆` 和 `|` 相结合，您可以编写任意复杂的语句运算符并使用括号分组。此外，可以使用 `〜` 运算符来否定 `Q` 对象，从而允许将普通查询和否定（`NOT`）查询组合在一起的组合查找：

```
Q(question__startswith='Who') | ~Q(pub_date__year=2005)
```

每个使用关键字参数的查找函数（例如 `filter()`，`exclude()`，`get()`）也可以传递一个或多个 `Q` 对象作为位置（未命名）参数。如果您为查找函数提供多个 `Q` 对象参数，则参数将一起 “`AND`”。例如：

```
SELECT * from polls WHERE question LIKE 'Who%'
    AND (pub_date = '2005-05-02' OR pub_date = '2005-05-06')
```

底层的 SQL 大概是这样：

```
Poll.objects.get(
    Q(pub_date=date(2005, 5, 2)) | Q(pub_date=date(2005, 5, 6)),
    question__startswith='Who',
)
```

查找函数可以混合使用 `Q` 对象和关键字参数。提供给查找函数的所有参数（不管它们是关键字参数还是 `Q` 对象）都是 “`AND`” 一起编辑的。如果提供了一个 `Q` 对象，它必须在任何关键字参数的定义之前。例如：

```
Poll.objects.get(  Q(pub_date=date(2005, 5, 2))|Q(pub_date=date(2005, 5, 6)), 
question__startswith='Who', )
```

...将是一个有效的查询，相当于前面的例子;但：

```
# INVALID QUERY
Poll.objects.get(
    question__startswith='Who',
    Q(pub_date=date(2005, 5, 2)) | Q(pub_date=date(2005, 5, 6))
)
```

...将无效。

> Django 单元测试中的 `OR` 查找示例显示了 `Q` 的一些可能的用法。

## 比较对象

要比较两个模型实例，只需使用标准的 Python 比较运算符双等号: `==`。在底层，Django 将比较了两个模型的 primary key。

使用上面的 `Entry` 例子，以下两个语句是等价的：

```
>>> some_entry == other_entry 
>>> some_entry.id == other_entry.id
```

如果模型的 primary key 不是 `id`，也没有问题。不管它叫什么，比较总是使用 primary key。例如，如果模型的 primary key 字段被称为 `name`，则这两个语句是等同的：

```
>>> some_obj == other_obj 
>>> some_obj.name == other_obj.name
```

## 删除对象

方便的删除方法被命名为 `delete()`。此方法立即删除对象并返回删除的对象数量和每个对象类型具有删除次数的字典。例：

```
>>> e.delete()
(1, {'weblog.Entry': 1})
```

您也可以批量删除对象。每个 `QuerySet` 都有一个 `delete()` 方法，该方法删除该 `QuerySet` 的所有成员。

例如，这将删除 `pub_date` 年份为 `2005` 年的所有 `Entry` 对象：

```
>>> Entry.objects.filter(pub_date__year=2005).delete()
(5, {'webapp.Entry': 5})
```

当 Django 删除一个对象时，默认情况下它会模拟 SQL 约束 `ON DELETE CASCADE` 的行为 -- 换句话说，任何有外键指向要删除的对象的对象都将被删除。例如：

```
b = Blog.objects.get(pk=1)
# This will delete the Blog and all of its Entry objects.
b.delete()
```

此级联行为可通过 `ForeignKey` 的 `on_delete` 参数进行自定义。

请注意，`delete()` 是唯一不在 `Manager` 本身公开的 `QuerySet` 方法。这是一种安全机制，可防止您意外地请求 `Entry.objects.delete()` 并删除所有条目。如果您确实要删除所有对象，则必须明确请求一个完整的查询集：

```
Entry.objects.all().delete()
```

## 复制模型实例

虽然没有用于复制模型实例的内置方法，但可以轻松创建复制了所有字段值的新实例。在最简单的情况下，你可以将 `pk`设置为 `None`。使用我们的博客示例：

```
blog = Blog(name='My blog', tagline='Blogging is easy')
blog.save() # blog.pk == 1

blog.pk = None
blog.save() # blog.pk == 2
```

如果你使用继承，事情变得更加复杂。考虑一下 `Blog` 的一个子类：

```
class ThemeBlog(Blog):
    theme = models.CharField(max_length=200)

django_blog = ThemeBlog(name='Django', tagline='Django is easy', theme='python')
django_blog.save() # django_blog.pk == 3
```

由于继承的工作原理，你必须将 `pk` 和 `id` 都设置为 `None`：

```
django_blog.pk = None
django_blog.id = None
django_blog.save() # django_blog.pk == 4
```

此过程不会复制不属于模型数据库表的关系。`Entry` 有一个 `ManyToManyField` to `Author`。复制 `entry` 后，您必须设置新 `entry` 的多对多关系：

```
entry = Entry.objects.all()[0] # some previous entry
old_authors = entry.authors.all()
entry.pk = None
entry.save()
entry.authors.set(old_authors)
```

对于 `OneToOneField`，您必须复制相关对象并将其分配给新对象的字段，以避免违反一对一唯一约束。例如，假设 `entry` 已经被重复如上：

```
detail = EntryDetail.objects.all()[0]
detail.pk = None
detail.entry = entry
detail.save()
```

## 一次更新多个对象

有时你想为 `QuerySet` 中的所有对象设置一个字段为特定的值。你可以用 `update()` 方法做到这一点。例如：

```
# Update all the headlines with pub_date in 2007.
Entry.objects.filter(pub_date__year=2007).update(headline='Everything is the same')
```

您只能使用此方法设置非关系字段和 `ForeignKey` 字段。要更新非关系字段，请将新值作为常量提供。要更新ForeignKey字段，请将新值设置为要指向的新模型实例。例如：

```
>>> b = Blog.objects.get(pk=1)

# Change every Entry so that it belongs to this Blog.
>>> Entry.objects.all().update(blog=b)
```

该 `update()` 方法立即应用并返回查询匹配的行数（如果某些行已具有新值，则该行数不计算在更新的行数内）。`QuerySet` 被更新的唯一限制是它只能访问一个数据库表：模型的主表。您可以根据相关字段进行过滤，但只能更新模型主表中的列。例：

```
>>> b = Blog.objects.get(pk=1) 
# 更新属于这个博客的所有标题。 
>>> Entry.objects.select_related().filter(blog=b).update(headline='Everything is the same')
```

请注意 `update()` 方法直接转换为 SQL 语句。这是直接更新的批量操作。它不会在模型上运行任何 `save()` 方法，或者发出 `pre_save` 或 `post_save` 信号（这是调用 `save()` 的结果），或兑现 `auto_now` 字段选项。如果要将每个 item 保存在 `QuerySet` 中并确保在每个实例上调用 `save()` 方法，则不需要任何特殊函数来处理该 item。只需循环它们并调用 `save()`：

```
for item in my_queryset:
     item.save()
```

调用更新也可以使用 `F` 表达式根据模型中另一个字段的值更新一个字段。这对于根据计数器的当前值递增计数器特别有用。例如，要增加博客中每个条目的 `pingback` 计数：

```
>>> Entry.objects.all().update(n_pingbacks=F('n_pingbacks') + 1)
```

但是，与 `filter` 和 `exclude` 子句中的 `F()` 对象不同，在 `update` 中使用 `F()` 对象时不能引入连接 -- 您只能引用正在更新的模型的本地字段。如果您尝试使用 `F()` 对象引入联接，则会引发 `FieldError`：

```
# This will raise a FieldError 
>>> Entry.objects.update(headline=F('blog__name'))
```

## 关系对象

当您在模型中定义关系（即 `ForeignKey`，`OneToOneField` 或 `ManyToManyField` ）时，该模型的实例将具有访问相关对象的方便的 API。

本节中的所有示例均使用本页顶部定义的示例 `Blog`，`Author` 和 `Entry` 模型。

### 一对多的关系

#### 正向访问

如果模型具有 `ForeignKey` ，则该模型的实例将通过模型的简单属性访问相关（外部）对象。

举例：

```
>>> e = Entry.objects.get(id=2) 
>>> e.blog # Returns the related Blog object.
```

您可以通过外键属性操作外键对象。在调用 `save()` 之前，对外键的更改不会保存到数据库。例：

```
>>> e = Entry.objects.get(id=2) 
>>> e.blog = some_blog 
>>> e.save()
```

如果 `ForeignKey` 字段具有 `null=True`（即，它允许 `NULL` 值），则可以分配 `None` 以移除关系。例：

```
>>> e = Entry.objects.get(id=2) 
>>> e.blog = None 
>>> e.save() # "UPDATE blog_entry SET blog_id = NULL ...;"
```

第一次访问相关对象时，缓存对一对多关系的正向访问。随后访问同一对象实例上的外键将被缓存。例：

```
>>> e = Entry.objects.get(id=2) 
>>> print(e.blog)  # Hits the database to retrieve the associated Blog. 
>>> print(e.blog)  # Doesn't hit the database; uses cached version.
```

请注意，`select_related()` `QuerySet` 方法会提前预先填充所有一对多关系的缓存。例：

```
>>> e = Entry.objects.select_related().get(id=2) 
>>> print(e.blog)  # Doesn't hit the database; uses cached version. 
>>> print(e.blog)  # Doesn't hit the database; uses cached version.
```

#### 反向访问

如果模型具有 `ForeignKey`，则外键模型的实例将有权访问 `Manager`，该 `Manager` 返回第一个模型的所有实例。默认情况下，此 `Manager` 名为 `FOO_set`，其中 `FOO` 是源模型名称，小写。该 `Manager` 返回 `QuerySet`，可以按照上述 “检索对象” 一节中的描述进行过滤和操作。

举例：

```
>>> b = Blog.objects.get(id=1)
>>> b.entry_set.all() # Returns all Entry objects related to Blog.

# b.entry_set is a Manager that returns QuerySets.
>>> b.entry_set.filter(headline__contains='Lennon')
>>> b.entry_set.count()
```

您可以通过在 `ForeignKey` 定义中设置 `related_name` 参数来覆盖 `FOO_set` 名称。例如，如果 `Entry` 模型被更改为 `blog=ForeignKey(Blog, on_delete=models.CASCADE, related_name='entries')`，上面的示例代码将如下所示：

```
>>> b = Blog.objects.get(id=1)
>>> b.entries.all() # Returns all Entry objects related to Blog.

# b.entries is a Manager that returns QuerySets.
>>> b.entries.filter(headline__contains='Lennon')
>>> b.entries.count()
```

#### 使用自定义反向 manager

默认情况下，用于反向关系的 `RelatedManager` 是该模型的默认 manager 的子类。如果您想为给定的查询指定不同的 manager，可以使用以下语法：

```
from django.db import models

class Entry(models.Model):
    #...
    objects = models.Manager()  # Default Manager
    entries = EntryManager()    # Custom Manager

b = Blog.objects.get(id=1)
b.entry_set(manager='entries').all()
```

如果 `EntryManager` 在其 `get_queryset()` 方法中执行了默认过滤，则该过滤将应用于 `all()` 调用。

当然，指定一个自定义反向 manager 也可以让你调用它的自定义方法：

```
b.entry_set(manager='entries').is_published()
```

#### 处理关系对象的其他方法

除了上面 “检索对象” 中定义的 `QuerySet` 方法之外，`ForeignKey` `Manager` 还具有用于处理关系对象集的附加方法。

```
add(obj1, obj2, ...)
```

将特定的模型对象加入关联对象集合。

```
create(**kwargs)
```

创建一个新对象，将其保存并放入关系对象集中。返回新创建的对象。

```
remove(obj1, obj2, ...)
```

从关系对象集中删除指定的模型对象。

```
clear()
```

从关系对象集中删除所有对象。

```
set(objs)
```

替换一组相关的对象。

要分配相关集的成员，请将 `set()` 方法与可迭代的对象实例一起使用。例如，如果 `e1` 和 `e2` 是 `Entry` 实例：

```
b = Blog.objects.get(id=1) b.entry_set.set([e1, e2])
```

如果 `clear()` 方法可用，则在 iterable（本例中为列表）中的所有对象都添加到 set 之前，将从 `entry_set` 中删除任何预先存在的对象。如果 `clear()` 方法不可用，则会添加迭代中的所有对象而不删除任何现有元素。

本节中描述的每个 “反向” 操作对数据库都有直接影响。每一次添加，创建和删除都会立即自动保存到数据库中。

### 多对多的关系

多对多关系的两端都可以自动访问另一端的 API。API 的作用类似于上面的 “反向” 一对多关系。

一个区别在于属性命名：定义 `ManyToManyField` 的模型使用该字段本身的属性名称，而 “反向” 模型使用原始模型的小写模型名称和 “`_set`”（就像反向一对多关系）。

一个例子使得这更容易理解：

```
e = Entry.objects.get(id=3)
e.authors.all() # Returns all Author objects for this Entry.
e.authors.count()
e.authors.filter(name__contains='John')

a = Author.objects.get(id=5)
a.entry_set.all() # Returns all Entry objects for this Author.
```

像 `ForeignKey` 一样，`ManyToManyField` 可以指定 `related_name`。在上面的例子中，如果 `Entry` 中的 `ManyToManyField` 指定了 `related_name='entries'`，那么每个 `Author` 实例将具有 `entries` 属性而不是 `entry_set`。

与一对多关系的另一个区别是，除了模型实例之外，多对多关系中的 `add()`，`set()` 和 `remove()` 方法接受主键值。例如，如果 `e1` 和 `e2` 是 `Entry` 实例，那么这些 `set()` 调用的工作原理是相同的：

```
a = Author.objects.get(id=5)
a.entry_set.set([e1, e2])
a.entry_set.set([e1.pk, e2.pk])
```

### 一对一的关系

一对一关系与多对一关系非常相似。如果您在模型上定义了 `OneToOneField`，则该模型的实例将通过模型的简单属性访问相关对象。

```
class EntryDetail(models.Model):
    entry = models.OneToOneField(Entry, on_delete=models.CASCADE)
    details = models.TextField()

ed = EntryDetail.objects.get(id=2)
ed.entry # Returns the related Entry object.
```

差异出现在 “反向” 查询中。一对一关系中的相关模型也可以访问 `Manager` 对象，但该 `Manager` 表示一个对象，而不是一组对象：

```
e = Entry.objects.get(id=2)
e.entrydetail # returns the related EntryDetail object
```

如果没有对象被分配给这个关系，Django 将引发一个 `DoesNotExist` 异常。

实例可以按照与分配转发关系相同的方式分配给反向关系：

```
e.entrydetail = ed
```

