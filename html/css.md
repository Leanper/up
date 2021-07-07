#                                     css样式表



##   1. 基本语法

### 		1.1 代码格式

```
选择器名：{
属性：属性值; 
属性：属性值;
}
```

###  1.2  注解

​    通过/*  注释内容*/注释代码

### 1.3 使用

1. ​      在head中设置style在style中编写代码

2.  在标签中定义style

3. 引用外部文件 通过link引用样式

   ```
   <link rel="stylesheet" href="../css/mycss.css">
   ```



---



## 2. 选择器

####    2.1 通用选择器

​	    所有元素均可使用 格式为：

```
 *{
	color:red;
 }
```



#### 	2.2 元素选择器

​			选择指定标签名 格式为：

```
		div{
			width:400px;
			height:400px;
     	 }
```



#### 	2.3 ID选择器

- ​			id保持唯一 

- ​			定义规则 以字母数字下划线中划线 不易数字开头
- 选择指定类的样式 ，格式以#开头

```
#textclolr{
color:red;
}
```



#### 	2.4 类选择器

- ​		以点开头 格式如下

- ```
  .divstyle{ 
  属性值
  }
  在外部通过class=divstyle引用
  ```

  

#### 	2.5 分组选择器

​		选择制定选择器 格式如下：

```
选择器1，选择器2，选择器3{
属性值
}
```



#### 2.6选择器优先级

行内样式style>id选择器 >类选择器> 元素选择器>通用选择器



#### 2.7 组合选择器

##### 2.7.1 后代选择器

（以空格   分隔）

 选择制定元素下 子元素

##### 2.7.2 子选择器

​	子元素选择器（Child selectors）只能选择作为某元素直接子一级子元素的元素（不会向下寻找孙元素)

​	(以大于 > 号分隔）

##### 2.7.3 相邻兄弟选择器

- 选择紧接在另一元素后的元素

- 选择紧挨着制定的元素 

- 只修改一个

（以加号 + 分隔）

##### 2.7.4 普通兄弟选择器

- 后续兄弟选择器选取所有指定元素之后的相邻兄弟元素

（以波浪号 ～ 分隔）

```
.a~p{
        border:1px solid cyan;
    }
```

https://www.bilibili.com/video/BV1P64y1m7tX?p=6

##### 2.7.5并行选择器

同时修改几个标签样式 代码格式如下：

```
div,p{
属性值
}
任何选择器都可以修改如

div,
p,
.classname li{# 和类名中的元素修改
属性值
}
```

##### 2.7.6 伪类选择器

- 为某些选择器添加特殊效果 如鼠标滑过样式 链接
- 格式 使用：冒号表示
  - a:hover鼠标滑过的样式
  - a:link 选择未被选中的链接
  - a:visited 选择已经选过的链接
  - a:active 选择活动链接（鼠标按下没有抬起的状态）
  - 有先后顺序 lvha link  visited hover active
- input：focus{} 获取光标之后的样式

![image-20210512095755552](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210512095755552.png)

## 3. 属性设置

#### 3.1 背景

 

```
background: red;
background-image: url("../images/hh.jpg"); 图片
background-repeat: no-repeat;// repeat-x 横向重复
background-size: 300px 300px; 图片大小
```

- ​	背景图片位置
  - background-position:center|bottom 方位名词前后顺序无关
  - 可以混合使用background-position：20px center。第一个参数代表x轴 第二个参数代表y轴
  - 背景图片是否固定通过background-attachment: scroll;设置
    - scoll滚动
    - fixed 固定 

![image-20210512101154093](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210512101154093.png)

- background 简写

![image-20210512102221367](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210512102221367.png)

background:rgba（0,0,0,0.3）最后一位是透明数值0~1



#### 3.2 文字

- color设置颜色

- text-align位置方式  默认左边 text-align:left。  center right分别代表居中在在右边

- ```css
  /*text-decoration: overline;*/   //下划线
  /*text-decoration: underline;*/ //上划线
  text-decoration: line-through; //中划线
  text-decoration:none //去除下划线
  ```

- ```
  text-indent: 2em;缩进俩字符 em代表一个文字高度
  ```

#### 3.3 字体

- 设置字体 font-family:楷体，宋体; 有后备机制 没有这个字体时自动识别下一个字体
- font-size设置大小
- font-style设置风格
  -  normal正常
  - 斜体 italic
- font-weight设置字体粗细





#### 3.4 对齐方式

left right center justify

#### 3.5 display

-  块级元素
  - 可以设置元素的宽高和边距 元素会自动换行 常见块元素div p li h等
- 行内元素
  - 不可以设置元素宽高和边距，元素不会自动换行。常见元素 a b em strong 等
- 行内块元素
  - 可以设置原色的宽高和边距 元素不会自动换行

![image-20210512095943278](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210512095943278.png)

- ​	display  是规定元素生成框的类型
  - block  元素会被显示 且元素会变成块级元素元素前后有换行符
  - none 元素会被隐藏
  - inline 元素会显示为行内元素 ，元素前后没有换行符
  - inline-block 行内块级元素
- 行内 块元素转化 通过display block 和inline转化

​		



#### 3.6 浮动

-  float 属性有 none left right。 left 在左边浮动 right在右边显示
  - 浮动只能横向浮动 没有纵向浮动
  - 会将元素的display属性变为block
  - 浮动元素的后一个元素会围绕着浮动元素(文字围绕图片)
  - 浮动元素的前一个元素不会受到任何影响

- 清除浮动
  - style=clear:both

#### 3.7盒子模型

![image-20210511172159042](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210511172159042.png)

##### 3.7.1 border 边框

- border:1px solid red 边框1像素 实心 红色

- 可以单独设置 

  - border-width 
  - border-color 
  - border-style 
    - dotted 点线边框
    - dashed 虚线边框
    - solid 实线边框
    - double双边框
    - ridge 3d边框
    - 
  - 设置一个属性表示四边一样 
  - 设置两个表示上下 一致 左右一致
  - 设置三个 表示上右下不一致 左右一致
  - 执行顺序上右下左

- 设置圆角边框

  ```
   border-top-left-radius:2em;
   border-top-right-radius:2em;
   border-bottom-right-radius:2em;
   border-bottom-left-radius:2em;
  ```

- 设置阴影

  - ```
    语法
    box-shadow: h-shadow v-shadow blur spread color inset;
    box-shadow: 10px 10px 5px #888888;
    ```

    | *h-shadow* | 必需的。水平阴影的位置。允许负值                             |
    | ---------- | ------------------------------------------------------------ |
    | *v-shadow* | 必需的。垂直阴影的位置。允许负值                             |
    | *blur*     | 可选。模糊距离                                               |
    | *spread*   | 可选。阴影的大小                                             |
    | *color*    | 可选。阴影的颜色。在[CSS颜色值](https://www.runoob.com/cssref/css_colors_legal.aspx)寻找颜色值的完整列表 |
    | inset      | 可选。从外层的阴影（开始时）改变阴影内侧阴影                 |

##### 3.7.2 padding

- 内边距（会改变元素形状 少用）

##### 3.7.13 margin



## 4.emmet语法

#### 4.1快速生成结构语法

1. ​	直接标签名加tab键生成
2. 生成多个标签直接 标签 * 数量。 如：  div* * 3
3. 父标签中嵌套子标签 直接用> 表示 。如ui > li*4 
4. 兄弟标签直接用+ 表示。如 div+p
5. 生成类名或者id名 直接 .demo  #demo
6.  生成div有顺序 则通过.类名$ * 5   如：  .demo$*5 生成五个类为12345 
7. 想要内部有内容 div{内容} 。div{内容}*5

#### 4.2生成css样式

1. w100 width=100px
2. 首字母简写

## 5.css三大特性

#### 5.1 继承

- 子标签会继承父标签的某些样式，如文本颜色和字号。想要设置一个可继承的属性，只需将它应用于父元素即可



![image-20210512103312560](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210512103312560.png)

#### 5.2 层叠性

- 样式冲突，遵循的原则是就近原则。 那个样式离着结构近，就执行那个样式
- 

#### 5.3优先级

- 行内样式优先。应用style属性的元素，其行内样式的权重非常高，可以理解为远大于100。总之，他拥有比上面提高的选择器都大的优先级。


- 权重相同时，CSS遵循就近原则。也就是说靠近元素的样式具有最大的优先级，或者说排在最后的样式优先级最大。


- CSS定义了一个!important命令，该命令被赋予最大的优先级。也就是说不管权重如何以及样式位置的远
  
  