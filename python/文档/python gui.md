<center>
# gui
</center>

---

+ ### 介绍
	+ thinter是python自带的轻量级gui库
	+ 通过import thinter导入
	+ tk.Tk()# 实例化一个Tk，用于容纳整个工艺程序

+ ### api介绍
	+ 设置标题：app.title("我是标题") #设置窗口的标题，IDLE的标题就是文件的路径
	+ #设置Label组件，Label组件是最常用的组件之一。可以用于显示文本图标图片。如下：
		+ theLabel = tk.Label(app, text='我的第一个窗口程序')  #Label()是一个组件，组件实例化以后成为一个组件对象，赋值到一个变量里面去
theLabel.pack()  #pack()方法用于自动调节组件自身的尺寸以及位置

---
+ ### Text 
	+ 是

---



+ ### grid place 
	+ 是

---

+ ### Entry输入框
	+ 
	+ sd 
	+ sd
	+ ![enter description here][1]
	+ 


---

+ ### topLevel
	    #创建顶级弹框，生成一个窗口
	    top = Toplevel()
	    top.title('Python')
	    msg = Message(top, text='I love study')
	    msg.pack()
	+ 
	+ 是
	
---
+ ### Menu
	+ 是


---
+ ## 三大布局
	+ pack 是按添加顺序排列组件
	+ grid 是按行列形式排列组件
	+ place 则允许程序员指定组件的大小和位置

+  #### grid
	+ 使用方法：Label(app, text='作品：').grid(row=0, column=0)  # 选项row代表行，column代表列
	 
	+ ![enter description here][2]
	+ ![enter description here][3]
	+ 

---

+ #### pack 
	+ 使用方法：Button(app, text="C").pack(side=RIGHT, expand=True, fill=NONE, anchor=NE, padx=10, ipady=10)
	+ side表示指定了它停靠在哪个方向，可以为LEFT,TOP,RIGHT,BOTTOM,分别代表左，上，右，下
	+ fill参数可以是X,Y,BOTH,NONE即在水平方向填充，竖直方向填充，水平和竖直方向填充和不填充
	+ expand True/False 选项是告诉窗口管理器将父组件的额外空间也充满
	+ anchor参数可以是N,E,S,W(这里的NESW分别表示北东南西，这里分别表示上右下左)以及他们的组合或者是CENTER(表示中间).n, ne, e, se, s, sw, w, nw, or center EWSN表示东南西北
	+ 它的ipadx表示的是内边距的x方向，它的ipady表示的是内边距的y的方向，
	+ padx表示的是外边距的x方向，pady表示的是外边距的y方向。
	
---

+ ### place
	+ 使用方法：Label(app, text="一个标签", bg="#00ff00").place(x=60, y=60, )
	+ x：指定组件的 X 坐标。x 为 0 代表位于最左边。
	+ y：指定组件的 Y 坐标。y 为 0 代表位于最右边。
	+ relx：指定组件的 X 坐标，以父容器总宽度为单位 1，该值应该在 0.0~1.0 之间，其中 0.0 代表位于窗口最左边，1.0 代表位于窗口最右边，0.5 代表位于窗口中间。
	+ rely：指定组件的 Y 坐标，以父容器总高度为单位 1，该值应该在 0.0~1.0  之间，其中 0.0 代表位于窗口最上边，1.0 代表位于窗口最下边，0.5 代表位于窗口中间。
	+ width：指定组件的宽度，以 pixel 为单位。
	+ height：指定组件的高度，以 pixel 为单位。
	+ relwidth：指定组件的宽度，以父容器总宽度为单位 1，该值应该在 0.0~1.0 之间，其中 1.0 代表整个窗口宽度，0.5 代表窗口的一半宽度。
	+ relheight：指定组件的高度，以父容器总高度为单位 1，该值应该在 0.0~1.0 之间，其中 1.0 代表整个窗口高度，0.5 代表窗口的一半高度。


---

+ ### Frame
	+ 使用方法：frame = Frame(app, width=200, height=200, bg="#00ff00")。创建一个宽高为200的div

	+ 创建控件容器，可依附在窗口中

---
+ ### PanedWindow
	
	+ 用户调整的多空间框架
	+ PanedWindow(master=None, **options)
	+ options属性有：background背景颜色
	+ orient 指定窗格的分布方式可以是HORIZONTAL（横向分布）和VERTICAL（纵向分布）
	+ 啊
	+ ![enter description here][4]
	
	
		#创建一个视图
		m = PanedWindow(orient=VERTICAL)
		m.pack(fill=BOTH, expand=1)
		
		top = Label(m, text='top pane')
		#将控件添加到视图中
		m.add(top)
		

+ ### 事件捕获
		# 获取鼠标实时位置的方式
		def callback(event):
		    print("当前位置：", event.x, event.y)
		 
		frame = Frame(root, width=200, height=200)
		frame.bind("<Motion>", callback)  #Motion事件表示当鼠标进入组件时，就会响应这个事件
		frame.focus_set()
	
		frame.pack()

---

		#键盘
		
			def callback(event):
		    print(event.char)  #获取当前键盘按下的字符
		 
		frame = Frame(root, width=200, height=200)
		frame.bind("<Key>", callback)  #组件想要响应键盘事件，组件必须获得焦点，组件才会响应键盘来的消息。因为一个窗口可以有很多组件，键盘一次敲击不知道给哪个组件。
		frame.focus_set()  #通过focus_set方法获得焦点。也可以设置Frame的takefocus选项为True，然后使用Tab将焦点转移上来
		frame.pack()

---

	利用<Motion>事件获取鼠标实时位置的方式

	    from tkinter import *
	     
	    root =Tk()
	     
	    def callback(event):
	        print("当前位置：", event.x, event.y)
	     
	    frame = Frame(root, width=200, height=200)
	    frame.bind("<Motion>", callback)  #Motion事件表示当鼠标进入组件时，就会响应这个事件
	    frame.focus_set()
	    frame.pack()
	    mainloop()
	    
---

事件序列<Button-1>：用户点击鼠标左键

事件序列<KeyPress-H>：用户点击H按键

事件序列<Control-Shift-KeyPress-H>：用户同时点击Ctrl + Shift +H

	

	 
		
	
	


  [1]: ./images/1619429429950.jpg "1619429429950.jpg"
  [2]: ./images/1619595600640.jpg "1619595600640.jpg"
  [3]: ./images/1619595610910.jpg "1619595610910.jpg"
  [4]: ./images/1619599656294.jpg "1619599656294.jpg"