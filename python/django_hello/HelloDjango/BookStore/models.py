from django.db import models

# Create your models here.

# 一对多：出版社（一） 书籍（多，外键在多的一方，依赖于出版社）
# 一对一：作者详情（一） 作者（一，外键在任意一方均可，一旦外键放在作者中，作者依赖于作者详情）
# 多对多：作者（多）书籍（多）建立关系表（存放两个表的外键信息 => 将建表转化为关系对应字段）
# Book书籍：id  name  price  publish_date  publish(publish_id)

class Publish(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)
    address = models.CharField(max_length=64)

class Book(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    publish_date = models.DateField()
    publish = models.ForeignKey(Publish, on_delete=models.CASCADE)
    # 多对多关系字段，该字段不会再book表中形成字段，是用来创建关系表的




# AuthorDetail作者详情: id  age  telephone  info
class AuthorDetail(models.Model):
    id = models.AutoField(primary_key=True)
    age = models.IntegerField()
    telephone = models.IntegerField()
    # 存大文本
    info = models.TextField()



class Author(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)
    author_detail = models.OneToOneField(AuthorDetail, on_delete=models.CASCADE)

