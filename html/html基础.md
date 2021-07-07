---
typora-root-url: ..\image
---

*<center>
## html基础
</center>

---
+ ### 标题
	+ 从h1 -h6逐级变小
---
+ ### 段落

	+ p标签 自动换行
	+ 换行标签 br
---
+ ### 文字标签

<strong>	strong（加强）	加粗
<em>	emphasized（强调）	斜体
<cite>	cite（引用）	斜体
<sup>	superscripted（上标）	上标
<sub>	subscripted（下标）	下标


+ ### img图片标签
	+ src图片路径
	+ alt表示图片展示不出来的提示语
	+ title 鼠标扫过图片吐司展示的图片


+ ### 超链接
	+ 通过标签a显示
	+ href 连接路径
	+ target 打开连接方式 self当前页面。——blank新界面打开
	+   href="first.html"内部链接 。href如果是zip则自动下载文件
	+ 锚点连接
		+ 在href中设置属性名#名称a href="#one" 跳转到id为one的文件夹下

+ ### 特殊字符
+ 
	 ![image-20210511134003609](H:\up\image\1620711933(1).jpg)
---



+ ### 列表
	+ 无序列表 ul
	
	// disc为圆点列表，circle为圆圈列表，square为正方形
	<ul style="list-style-type:disc">
	 <li>Apples</li>
	 <li>Bananas</li>
	 <li>Lemons</li>
	 <li>Oranges</li>
	</ul>  
+ 有序列表  ol
		
	// type表示不同类型的有序列表 i为罗马数字 A为大写abc，a为小写abc
		<ol>
	 <li>Apples</li>
	 <li>Bananas</li>
	 <li>Lemons</li>
	 <li>Oranges</li>
	</ol>  
	+ 自定义列表
	
		自定义列表不仅仅是一列项目，而是项目及其注释的组合。
		自定义列表以 <dl 标签开始。每个自定义列表项以 <dt 开始。每个自定义列表项的定义以 <dd> 开始。
	<dl>
	<dt>Coffee</dt>
	<dd>- black hot drink</dd>
	<dt>Milk</dt>
	<dd>- white cold drink</dd>
	</dl> 



---


+ ### 表格
	+ 合并单元格
		+ rowspan 跨行合并
		+ colspan 跨列合并
		+ rowspan=“3”删除后面的两个

  // align表格位置 有center中间显示。left左 right右。cellpadding文字内容和单元格位置.cellspacing单元格与单元格位置。width height代表宽高-->
	thead 表示表格的头部 tbody 表示表格的body


---

+ ### 表单
	+ label增大面积
	<--label 使用for 在下面标签表明id-->
		&lt;label for="choosewomen"> 女&lt;/label>
		&lt;input type="radio" value="women" name="choosesex" id="choosewomen"><br/>
	
	+ ![image-20210511134003609](H:\up\image\image-20210511134003609.png)
	+ select标签
		+ 选择标签 子列表使用option
		+ selected="selected"表示默认选中
	+ textarea 大输入框
		+ rows 一行显示的数
		+ cols 显示几行

