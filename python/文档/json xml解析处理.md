<center>  
## xml解析 
</center>

----

#### Python 有三种方法解析 XML，SAX，DOM，以及 ElementTree:

---
+ sax解析
	+ 是一种基于事件驱动的api
	+ 利用 SAX 解析 XML 文档牵涉到两个部分: 解析器和事件处理器。
	+ 解析器负责读取 XML 文档，并向事件处理器发送事件，如元素开始跟元素结束事件。
	+ 事件处理器则负责对事件作出响应，对传递的 XML 数据进行处理。

---

+ xml.dom解析
	+ 




<center>
### json解析
</center>

	 json.dumps(): 对数据进行编码。
	    json.loads(): 对数据进行解码。

+ String转化为json

		#Python 字典类型转换为 JSON 对象
		data = {
		    'no' : 1,
		    'name' : 'Runoob',
		    'url' : 'http://www.runoob.com'
		}
		 
		json_str = json.dumps(data)
		print ("Python 原始数据：", repr(data))

---

+ Json 转化为String
	+ #将JSON 对象转换为 Python 字典，data2 = json.loads(json_str)





		如果你要处理的是文件而不是字符串，你可以使用 json.dump() 和 json.load() 来编码和解码JSON数据。例如：
		实例(Python 3.0+)
		# 写入 JSON 数据
		with open('data.json', 'w') as f:
		    json.dump(data, f)
		 
		# 读取数据
		with open('data.json', 'r') as f:
		    data = json.load(f)

































































































