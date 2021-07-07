#                                            vue

https://blog.csdn.net/youxianzide/article/details/86480683

## 1.简单介绍

- 一套用于构建用户界面的**渐进式框架**



## 2.基本语法

####  2.1 引用 

```vue
<script src="../js/vue.js"></script>
```



#### 2.2

- el
  - 类型 String|htmlelement
  - 作用：决定要管理那个dom
- data:
  - 类型：Object|function （在组件中返回必须是个方法）
  - 作用：数据对象
- methods
  - 类型：{[key：String]：function}
  - 作用 定义一些方法

​	



```
<script>
    // const 定义常量 let定义变量
  const app=new Vue({

  })

</script>
```





## 3. MVVM



![image-20210512152803239](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210512152803239.png)

![image-20210512153325730](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210512153325730.png)





## 4.生命周期



#### ![img](https://upload-images.jianshu.io/upload_images/11370083-f279314aef6741db.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/1080)

### beforeCreate( 创建前 )

在实例初始化之后，数据观测和事件配置之前被调用，此时组件的选项对象还未创建，el 和 data 并未初始化，因此无法访问methods， data， computed等上的方法和数据。

### created ( 创建后 ）

实例已经创建完成之后被调用，在这一步，实例已完成以下配置：数据观测、属性和方法的运算，watch/event事件回调，完成了data 数据的初始化，el没有。 然而，挂在阶段还没有开始, $el属性目前不可见，这是一个常用的生命周期，因为你可以调用methods中的方法，改变data中的数据，并且修改可以通过vue的响应式绑定体现在页面上，，获取computed中的计算属性等等，通常我们可以在这里对实例进行预处理，也有一些童鞋喜欢在这里发ajax请求，值得注意的是，这个周期中是没有什么方法来对实例化过程进行拦截的，因此假如有某些数据必须获取才允许进入页面的话，并不适合在这个方法发请求，建议在组件路由钩子beforeRouteEnter中完成

### beforeMount

挂在开始之前被调用，相关的render函数首次被调用（虚拟DOM），实例已完成以下的配置： 编译模板，把data里面的数据和模板生成html，完成了el和data 初始化，注意此时还没有挂在html到页面上。

### mounted

挂在完成，也就是模板中的HTML渲染到HTML页面中，此时一般可以做一些ajax操作，mounted只会执行一次。

### beforeUpdate

在数据更新之前被调用，发生在虚拟DOM重新渲染和打补丁之前，可以在该钩子中进一步地更改状态，不会触发附加地重渲染过程

### updated（更新后）

在由于数据更改导致地虚拟DOM重新渲染和打补丁只会调用，调用时，组件DOM已经更新，所以可以执行依赖于DOM的操作，然后在大多是情况下，应该避免在此期间更改状态，因为这可能会导致更新无限循环，该钩子在服务器端渲染期间不被调用

### beforeDestroy（销毁前）

在实例销毁之前调用，实例仍然完全可用，

1. 这一步还可以用this来获取实例，
2. 一般在这一步做一些重置的操作，比如清除掉组件中的定时器  和 监听的dom事件

### destroyed（销毁后）

在实例销毁之后调用，调用后，所以的事件监听器会被移出，所有的子实例也会被销毁，该钩子在服务器端渲染期间不被调用





## 5.插值语法

mustache

###  5.1指令

##### 		5.1.1 v-once

​		只渲染一次 不会随数据变化而变化 直接 <p v-once>标题</p>

#####    5.1.2 v-html="url"

​    v-html="url" 将返回的网页显示问文字

##### 5.1.3 v-for

迭代对象 迭代集合

推荐使用v-for添加key

```vue
<li v-for="value in object">
data: {   
object: {  
name: '菜鸟教程',   
url: 'http://www.runoob.com',  
slogan: '学的不仅是技术，更是梦想！' 
}
    
    
    
        <li v-for="(k,v,index) in obj">{{k}} {{v}}{{index}}</li>获取key value index

```

 

##### 5.1.4  v-if  v-else  v-else if

```
<div v-if="type === 'A'">
      A
    </div>
    <div v-else-if="type === 'B'">
      B
    </div>
    <div v-else-if="type === 'C'">
      C
    </div>
    <div v-else>
      Not A/B/C
    </div>
```

​	v-if  v-show区别

if当 为false是 不会存在元素

show 为false是 给我们元素添加行内样式 display:none

显示和隐藏切换比较高的时候使用v-if

当切换不频繁使用v-show （常用的）

##### 5.1.5 v-show

v-show 指令来根据条件展示元素

```
<h1 v-show="ok">Hello!</h1> data中ok为true是显示 为false不显示
```

##### 5.1.6 v-cloak

​		没加载出来是 不显示

##### 5.1.7 v-pre 

​	直接显示 不显示格式

##### 5.1.8 v-text="text"

 显示text文本 较少使用不灵活 会修改参数值



---

### 5.2 v-model



- 数据双向绑定
  - 相当于v-bind中的value和v-on的input属性
  - v-bind绑定数据 input监听数据
- v-on:input对输入框监听
- 当调用函数是不传参数时 默认会传递event方法

##### 5.2.radio连用

- radio 定义name为相同的值 会互斥 可以多选一

- v-model绑定属性值 获取value值 可以不定义name

- 绑定一个boolean

  

##### 5.3.checkbox连用

- label绑定一个输入框
- 绑定一个数组



##### 5.4.select 连用

- 选择一个值

- 选择多个值传递数组 并且加上multiple属性

  ```
   <select v-model="fiute">
      <option value="苹果">苹果</option>
      <option value="香蕉">香蕉</option>
      <option value="葡萄">葡萄</option>
      <option value="苹果">苹果</option>
    </select>
    <h2>爱好{{fiute}}</h2>
  
    <select v-model="fiutes" multiple>
      <option value="苹果">苹果</option>
      <option value="香蕉">香蕉</option>
      <option value="葡萄">葡萄</option>
      <option value="苹果">苹果</option>
    </select>
  
    <h2>爱好{{fiutes}}</h2>
  ```

  

##### 5.5修饰符

- lazy方式过度加载
- number 获取int类型数据
- trim去除空格

```

v-model.lazy v-model.number  
```



## 6. v-bind 事件绑定

###  6.1 v-bind基本使用

- ​	动态绑定连接 图片等等
- 缩写：

#### 6.1.1 动态绑定图片 

```
<img v-bind:src="imgurl" alt=""> 可以简写为<img :src="imgurl" alt="">
```

#### 6.1.2 动态绑定连接

```
<a v-bind:href="url">baidu</a>
```



###  6.2 v-bind动态绑定

####    6.2.1 动态绑定class

- 用法一 直接通过{}绑定一个类

  ```
  <h2:class="{'active':isActive}">hello world </h2>
  ```

- 通过判断传入多个值

  ```
  <h2:class="{'active':isActive,'line':isLine}">hello world </h2>
  ```

  

- 和普通类同时存在不冲突

- 如果复杂 可以在methods写一个方法





####   6.2.2 动态绑定style

-    对象语法

```
  <h2 v-bind:style="{属性名：属性值}"></h2>
：style="{color:pagecolor,fontSize:size+'px'}"
```



- 数组语法

  数组里面方对象

  ```
  ：style=[style1,style2]
  ...
  data{
  style backgroud:'red'
  }
  ```

  



## 7.计算属性

```
computed:{
    fullname:function () {
        return this.firstname+ this.lastname
    },
    totalprice:function () {
        let result=0;
        for (let i=0;i<this.books.length;i++){
            result+=this.books[i].price
        }
        return result
    }

}

默认方法有setter和getter属性的
一般不用set方法
totalorice{
		
		set:function(str){
			names=str.split( )
			this.fristname=names[0]
			this.lastname=names[1]
		
		}
		
		get:function(){
		   return this.firstname+ this.lastname
		}
}
```

​	

- methods和computed区别
  - methods没有缓存 打印多少次调用多少次
  - computed有缓存 没有发生变化只调用一次
  - 

## 8.es6

### 8.1 let var const

- let是更完美的var
- let是块级元素 
- var是函数作用域 相当于全局变量
- const把标识符定义为常量，不能修改
- const定义时必须赋值
- const定义对象可以修改对象内部属性



### 8.2对象增强语法

 省略写法

```
 const name='张三',
    const  age=18,
    const height=188
    const obj={

        name:name,
        age:age,
        height:height,
        run:function(){
        
        }
    }
    
     const name='张三',
    const  age=18,
    const height=188
    const obj={
		#将对象名称存为key 属性为value
        name,
        age,
        height,
        run(){
        
        }
    }
```





## 9. v-on



9.1 v-on:click（）监听点击事件 语法糖 @click()

- 在事件监听时没有参数 括号可以省略额

- ```VUE
  <button v-on:click="add">+</button>
    <button v-on:click="sub">-</button>
  
  ```

- 当传递参数时有函数，调用时没有传则显示undfind



v-on 修饰符 

格式：

```vue
 <input type="submit"value="提交" @click.prevent="mysubmit">

```



- stop 阻止事件冒泡
- prevent 阻止提交
- {keycode|}
  - v-on:keyup键盘监听
- once值允许调用一次



vue有缓存机制 加载界面 首先加载在虚拟dom里，然后加载界面，当相同标签时不修改内容





可变参数

```
function sum(...nums){




}
```



## 10.vue数组响应式

#### 10.1 push方法

可以做到响应式

- 可以传入一个值

- 可以传入多个值

```
<script>
    this.books.push('aaa');
    this.books.push('aaa','bbb','ccc');
</script>
```



#### 10.2 pop():

删除数组中的最后一个元素，可以做到响应式



#### 10.3 shift():

删除数组中的第一个元素,可以做到响应式

#### 10.4 unshift():

在数组最前面添加元素，可以做到响应式

- 可以传入一个值

- 可以传入多个值

```
<script>
    this.books.unshift('aaa');
    this.books.unshift('aaa','bbb','ccc');
</script>
```



#### 10.5 splice作用：

删除元素/插入元素/替换元素，可以做到响应式可以做到响应式

- 删除元素splice(start)和splice(start，count)

```
<script>
	this.letters.splice(1)//删除1之后的元素
	this.letters.splice(1，2)//删除1之后的两个元素
</script>

```



- 替换元素splice(1,3,'m','n','l') 位置1之后的三个元素替换为mnl

  ```
  <script>
  	this.letters.splice(1,3,'m','n','l')
  </script>
  ```

  

- 插入元素splice(1,0,'m','n','l')位置1插入三个元素


```
<script>
	this.letters.splice(1,0,'m','n','l')
</script>
```




#### 10.6 sort()

可以做到响应式，正序

#### 10.7 reverse()

可以做到响应式，倒序

#### 10.8 通过索引值修改数组中的元素,不是响应式的

​	如果将数组设为响应式

- 使用splice实现

  ```html
   this.letters.splice(0,1,'bbbbbb')
  ```

- 使用vue自带的方法实现

```html
 Vue.set(this.letters,0,'bbbbb')

```



## 11.  js高阶函数

##### 11.1  filter过滤器

- 过滤器返回时boolean值
- 返回true 加到新数组
- 返回false加到新数组

```
 let newnum=this.num.filter(function (n) {

                  return n<30
              })
              return newnum
```

##### 11.2 map函数

  返回一个新数组，数组中的元素为原始数组元素调用函数处理后的值

```

```

##### 11.3 reduce函数

   接收一个函数作为累加器

```

```



##### 11.4 sort函数

用于Array排序



```
 let newnum=this.num.filter(function (n) {
                  return n<30
              }).map(function (n) {
                  return n*3
              }).reduce(function (pre,n){
                  return pre+n
              })

              console.log(newnum)

                  let news=this.num.filter(n=> n<30).map(n=> n*3).reduce((pre,n)=>pre+n)
              console.log(news)
```



---



## 12. 组件开发

#### 12.1 组件化步骤

- 创建组件构造器
- 注册组件
- 使用组件



- 创建组件构造器 通过Vue.expend创建

```
const mycon=Vue.extend({
            template:`
            <div>
            <h2>我是标题</h2>
            <p>我是内容</p>
            </div>       `

    })
    
    在es6中可以通过tab键上‘引用布局文件
```



- 通过component创建其中传两个参数第一个为引用组件时标签名，第二个为构造器名字

```
    Vue.component('my-con',mycon)

```



#### 12.2 全局组件 局部组件

- 在vue实例外创建为全局组件 

- 在vue中创建为局部组件

  ```
  const myCon=Vue.extend({
              template:`
              <div>
              <h2>我是标题</h2>
              <p>我是内容</p>
              </div>
              `
      })
      
      //全局创建组件
      Vue.component('mycon',myCon)
  
  //一般创建一个实例 使用局部组件常用
    const apps=new Vue({
        el:'#app', //挂载要管理的元素
        data:{ //数据
  
        },
        //在vue实例中创建
        components:{
            mycon:myCon
        }
  ```

  

#### 12.3 子组件父组件

myCon2位父组件 myCon为子组件，子组件必须在父组件的div中，否则不显示

```


    const myCon=Vue.extend({
            template:`
            <div>
            <h2>我是标题1</h2>
            <p>我是内容</p>
            </div>
            `
    })

    const myCon2=Vue.extend({
            template:`
            <div>
            <h2>我是标题2</h2>
            <p>我是内容ddd</p>
            <mycon></mycon>
            </div>

            `,components:{
                mycon: myCon
        }
    })
    
    const apps=new Vue({
      el:'#app', //挂载要管理的元素
      data:{ //数据

      },
      components:{
          // mycon:myCon,
          mycons:myCon2,
      }


  })

```



12.4语法糖注册方式

```
全局注册方式
    Vue.component('sss',{

        template:`
            <div>
            <h2>我是标题www2</h2>
            <p>我是内容ddd</p>
            <mycon></mycon>
            </div>
            `
    })
    
    
     局部注册方式
  const apps=new Vue({
      el:'#app', //挂载要管理的元素
      data:{ //数据

      },
      components:{
          mycon3:{
              template:`
            <div>
            <h2>我是标题4</h2>
            <p>我是内容ddd</p>
            <mycon></mycon>
            </div>

            `
          }
      }


  })

```

#### 12.4 模板抽离



```
//第一种写法
<script type="text/x-template" id="cpn">
  <div>
    <h2>我是标题1cpn</h2>
    <p>我是内容</p>
  </div>
</script>

//第二种写法
<template id="cpn">
  <div>
    <h2>我是标题1template</h2>
    <p>我是内容</p>
  </div>
</template>

在vue实例中

 const apps=new Vue({
      el:'#app', //挂载要管理的元素
      data:{ //数据

      },
      components:{
        
          template:'#cpn',
         

            `
          }
      }
```



#### 12.5组件传递数据

```

 Vue.component('cpns', {
        template: '#cpn',
        //data 必须是个函数，函数是表示每次引用都会创建自己引用地址 不会相互影响
        data() {
            return{
                title:'标题'
            }
        }
        })
```



#### 12.6 父子组件通信

- 父组件传递子组件通过props
- 子组件传递给父组件 通过自定义事件 event



###### 12.6.1 父组件传递给子组件

v-bind之后不支持驼峰命名

```
//定义模板 使用props传值
const cpn = {
    template : '#cpn',
    props:['cfirut','cmessage']
}
   // const 定义常量 let定义变量
  const apps=new Vue({
      el:'#app', //挂载要管理的元素
      data:{ //数据
        message:['aaa','ddd'],
        firut:'sdsds'
      },
      components: {
          cpn
      }


  })
  
  
  <template id="cpn">
  <div>
    <p>{{cfirut}}</p>
    <p>{{cmessage}}</p>
  </div>
</template>

<script src="../../js/vue.js"></script>

//使用v-bind绑定数据
<div id="app">
<cpn v-bind:cfirut:="firut" v-bind:cmessage="message"></cpn>
  </div>

```

props可以传递数组 对象

```
//传递数组
props:['aa','ss']
//传递对象一 设置类型
类型有Boolean Array String function Number Date Object等
props:{
cmovies:Array,
cmessage:String
}

//传递对象二
props:{
cmessage:{
type:Stirng,
defalut:"默认值"，
required:true//必穿函数

}

}
```





##### 12.6.2 子组件传递给父组件

- 在子组件methods中定义方法，在方法中通过$emit（'函数名',传值）定义响应方法
- 在子组件模板中通过@click监听到定义的方法
- 在父组件中通过v-on监听自定义方法
- 在父组件methods中监听



```
//子组件
<template id="cpn">
//定义监听方法 监听子组件传过来的参数
  <div>
      <button v-for="book in books" @click="btnclick(book)">{{book.name}}</button>
  </div>
</template>

//父组件
<div id="app">
  <cpn v-on:itemclick="cpnclick"></cpn>
</div>
<script src="../../js/vue.js"></script>

<script>
    //子组件
    const cpn = {
        template : '#cpn',
        data(){

            return {
                books:[
                    {id:'1',name:"海底两万里"},
                    {id:'2',name:"海底两万里2"},
                    {id:'3',name:"海底两万里4"},
                    {id:'4',name:"海底两万里3"}
                ]
            }
        },
        methods:{
            btnclick(item){
                this.$emit('itemclick',item)
            }
        }


    }


    const apps=new Vue({
        el:'#app', //挂载要管理的元素
        data:{ //数据          
        
        },
        components: {
            cpn
        },methods: {
            cpnclick(index){
                console.log(index)
            }

        }


    })
 

```







## 13.slot插槽

##### 13.1插槽

- 插槽的基本使用<slot></slot>
- 插槽可以设置默认值<slot><P>段落</P></slot> 上面引用如果添加内容则显示添加的 不传则显示p标签
- 当在插槽中添加多个元素则全部显示



##### 13.2具名插槽

- 修改某个具体值

- 不定义名字则修改没有名称的

- 代码如下：

  ```
  
  <template id="cpn">
    <div>
    <h2>标题</h2>
    <p>内容</p>
    <slot name="left"><span>左边</span></slot>
    <slot name="center"><span>中间</span></slot>
    <slot name="right"><span>右边</span></slot>
    </div>
  </template>
  
  <div id="app">
  <cpn ><button slot="left">返回</button></cpn>
  ```

  

  ##### 13.3作用域插槽

  TODO 编辑作用域 

  父组件使用子组件的元素

  ```
  <template id="tem">
  <div>
    <slot :data="planguage">
      <ui>
        <li v-for="l in planguage">{{l}}</li>
      </ui>
    </slot>
  
  </div>
  
  </template>
  
  <div id="app">
    <tem></tem>
  
    <tem>
    <template slot-scope="slot">
      <ol>
        <li v-for="item in slot.data">{{item}}</li>
      </ol>
  
    </template>
  
    </tem>
  
    </div>
  <script>
      // const 定义常量 let定义变量
    const apps=new Vue({
        el:'#app', //挂载要管理的元素
        data:{ //数据
  
  
  
        },
        components:{
            tem:{
                template:'#tem',
                data (){
                    return {
                        planguage:['python','go','kotlin','java']
                    }
  
                }
            },
  
  
        }
  
  
    })
  
  </script>
  ```

  

  

  





## 14. Webpack

 webpack是现在JavaScript的模块打包工具





#### 14.1 安装

#### 14.2 Webpack.config.js 配置

- 通过webpack.config.js配置导入导出
- entry是导入
- output是导出
  - path是node语法 通过path.resolve(__dirname,'文件夹名称')来引用绝对路径
- filename是生成的包

```
const  path =require('path')
module.exports={

    entry:'./src/main.js',
    output:{
        path:path.resolve(__dirname,'dist'),
        filename:'bundle.js'
    }
}
```



#### 14.3 package.json 配置

-  通过npm init创建package.json

- 在scripts中配置运行命令

  ```vue
  {
    "name": "meetwebpack",
    "version": "1.0.0",
    "main": "index.js",
    "scripts": {
      "test": "echo \"Error: no test specified\" && exit 1",
       "build":"webpack"
    },
    
  ```

- 通过npm run build 代替webpack运行



#### 14.4配置css

- 首先创建文件
- 在主函数中引用css文件  require('./css/normal.css')
- 通过npm安装插件 npm install --save-dev css-loader
- 使用css文件时要引入style-loader 通过npm install --save-dev style-loader安装styleloader
- 



#### 14.5 配置文件





#### 14.6 plugin

- BannerPlugin 注释版权内容信息 在webpak.config.js配置

  ```
  const  webpack =require('webpack')
  
  module.exports = {
      entry:'./src/main.js',
      output:。。。
  
      resolve:。。。
      module:。。。
      plugins:[
          new webpack.BannerPlugin('主办权了')
      ]
  
  
  ```

- htmlwebpackPlugin
  - 首先安装插件 通过npm install html-webpack-plugin --save-dev

- 

#### 14.5 es6转es5

- 通过 npm install &#45;&#45;save-dev babel-loader@7 babel-core babel-preset-es2015安装工具包

- 在config.js中rules中 

  ```VUE
   {
                  test: /\.m?js$/,
                  exclude: /(node_modules|bower_components)/,
                  use: {
                      loader: 'babel-loader',
                      options: {
                          presets: ['es2015']
                      }
                  }
              }
  ```

  #### 14.5配置图片
  
  首先安装url-loader  npm install url-loader --save-dev
  
  

#### 14.5 webpack配置vue

- 通过npm install vue --save 安装vue

- ```
  npm install vue-loader vue-template-compiler --save-dev
  ```

- 在webpack.config.js配置

  ```
  resolve:{
          alias:{
              'vue$':'vue/dist/vue.esm.js'
          }
          
          
          
   rules:[
              {
                  test: /\.vue$/,
                  use: [
                      {
                          loader: 'vue-loader',
  
                      },
                  ],
              },
  
          ]
  ```

  

#### 搭建本地服务器

```
npm install --save-dev webpack-dev-server@2.9.1
```

 在config配置文件

```
devServer:{
    contentBase:'./dist',
    inline:true
}
```



el和template比较

- 当同时存在是 则会template会替代el引用的布局

## 15.cli脚手架

#### 15.1 安装

- 安装node

- 安装npm

- npm install -g @vue/cli 安装 `cnpm i @vue/cli -g` 这个是cli3的版本

- ```
  cnpm i @vue/cli-init -g 安装cli2版本
  ```

![image-20210601093217050](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210601093217050.png)

![image-20210601110838925](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210601110838925.png)

#### 15.2 创建项目

- cli2创建 vue init webpack 项目名
- cli3 创建   vue create project
- 

#### 15.3 runtime-compiler和runtime-only区别

-  runtime-compiler template -->抽象语法树--》render-->渲染成虚拟dom --》真是dom--> ui
- runtime-only   render-->渲染成虚拟dom --》真是dom--> ui

![image-20210601103633643](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210601103633643.png)

![image-20210601103829263](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210601103829263.png)

​		



- vue ui 启动一个gui管理项目









- 箭头函数

```
const getdata=()=>{

  }

//传递两个参数
  const sum=(num1,num2)=>{

      return num2+num1
  }
//传递一个参数 可以省略括号
  const power=num=>{
      return num*num
  }
  //代码块中只有一行可省略大括号
  const power1=num=>num*num

  console.log(power1(10));
  
  箭头函数中this是向外层逐层查找 直到找到定义的this

```









## 16.vue-router

#### 16.1什么是路由

- 从信息源发送到目的地址

后端路由：服务器渲染界面直接传染给前端

前后端分离：

spa：



![image-20210601142723647](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210601142723647.png)

![image-20210601143127220](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210601143127220.png)



![image-20210601144152422](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210601144152422.png)



#### 16.2 html history方法

- history.pushState（{}，"title","me"）进站 可返回
- history.replaceState（{}，"title","me"）进站替换不能返回
- history.back()返回上个界面
- history.go(-1) =history.back() 
  - history.go(-3) 返回三个界面 go(3) 进入第三个界面
- history.forward()==history.go(1)





#### 16.3 安装配置

##### 16.3.1 安装

- npm install vue-router --save

##### 16.3.2 配置

- 创建router文件夹

- 创建index.js

  - ```
    import VueRouter from 'vue-router'
    import Vue from 'vue'
    //1.通过Vue.use导入插件
    import Home from '../components/Home'
    import About from '../components/About'
    
    Vue.use(VueRouter)
    
    const routes=[
    
    //通过redirect设置默认的路径地址
        {
            path:'',
            redirect:'/home'
        },
        {
            path:'/home',
            component:Home
    
        },
        {
            path:'/about',
            component:About
        }
    
    
    ]
    
    const router = new VueRouter({
    //必须是routes
        routes,
        //通过mode设置修改地址 修改模式为history
        
        mode:'history'
        }
    )
    //导出 
    export default router
    ```

- 在component创建组件

- 在主界面app.vue添加

  - tag可以改变类型默认为a标签
  
  - replace禁止返回(当前界面没效果 重新进入有效果)
  
  - ```
    创建连接
    
      <router-link to="/home" tag='button' replace>首页</router-link>
        <router-link to="/about">关于</router-link>
    
    连接之后显示的内容
        <router-view></router-view>
    ```
  
    

- 通过点击监听事件跳转

  - ```
       <button @click="btns">首页</button>
        <button @click="btna">首页</button>
        <router-view></router-view>
  
  
    export default {
      name: 'App',
      methods:{
        btns(){
          this.$router.push('/home')
          //替换 没有返回
          this.$router.replace('/home')
        },
        btna(){
          this.$router.push('/about')
        }
      }
  
    }
    ```

    

- 

#### 16.4 动态路由

- 在index配置

- ##### path user/**:**userId (有冒号)

  ```
   {
          path:'/user/:userId',
          component:User
      }
  ```

  

- 在link中绑定

  ```
      <router-link v-bind:to="'/user/'+userId" tag="button" replace active-class="active">我的</router-link>
  
  ```

  

- 在data中获取uerid

  ```
   data(){
  
      return{
        userId:'张三',
        message:'hh'
    }
  ```

- 在底部获取内容

  ```
  方法一
  在子组件中直接返回
  computed:{
       uerId() {
       //$route是当前活跃的界面
         return this.$route.params.userId
       }
    }
    
   方法二
     <h2>{{$route.params.userId}}</h2>
  
  ```

  

#### 16.5 懒加载

![image-20210602100808799](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210602100808799.png)

```
// import Home from '../components/Home'
// import About from '../components/About'
// import User from "../components/User";

const Home =()=>import('../components/Home')
const About =()=>import('../components/About')
const User =()=>import('../components/User')

```

 如上代码 定义箭头函数 分块加载



#### 16.6 路由嵌套

- 在父路由定义children

- path没有/

  ```
   children:[
              {
                  path:'',
                  redirect:'news'
              },
              {
                  path:'news',
                  component:HomeNews
              },
              {
                  path:'message',
                  component:HomeMessage
              },
          ]
  
  ```

- 在父组件中通过 router-link设置

  ```
  
   <router-link to="/home/news">新闻</router-link>
      <router-link to="/home/message">消息</router-link>
      <router-view></router-view>
  ```

  







#### 16.7 路由传值

- url  协议：主机名/路径 ？查询（qurey）

  - 方式一

    - 16.4 动态路由

      

  - 方式二

    - 通过query查询

      ```
        //to中path为路径 query为传递参数
        <router-link :to="{path:'/about',query:{name:'张三',sex:'man'}}" tag="button" replace active-class="active">关于</router-link>
      //获取参数
      {$route.query.name}
      ```

      



#### 16.8 导航守卫

- 前置守卫（guard)

```
{
        path:'/about',
        component:About,
        meta:{
            title:'关于'
        }

router.beforeEach((to, from, next) => {
    document.title=to.matched[0].meta.title
    //必须写这个方法 否则不发生跳转
    next()
})
```

- 后置钩子（hook)

  ```
  router.afterEach((to, from) => {
      document.title=to.matched[0].meta.title
      console.log(from);
  
  })
  ```

- 路由独享守卫

  ```
   {
          path:'/about',
          component:About,
          meta:{
              title:'关于'
          },
          beforeEnter:(to,from,next)=>{
              console.log('关于');
              console.log(from.meta.title);
              next()
          }
      },
  ```

  

- 组件内守卫

  ```
    beforeRouteEnter(to,from,next){
    console.log(from.matched[0].meta.title)
      next()
    },
  ```

  

#### 16.9 keep-alive

- 保持界面不被频繁创建销毁，用keep-alive包裹动态组件时，会缓存不活动的组件实例，而不是销毁它们

- ```
   <keep-alive>
        <router-view></router-view>
    
      </keep-alive>
  ```

  

- include exclude 表示正则排除那个类 exclude='user,about'排除这俩插件不被频繁创建调用

- keep-alive和actived和deactived连用 表示是否活跃状态

- https://zhuanlan.zhihu.com/p/96740001



## 17.Tabbar

- 文件抽离





## 18.Promise

#### 18.1 promise 介绍使用

- 异步操作时使用promise



```
  // 创建异步请求
 new Promise((resolve,reject)=>{
        setTimeout(()=>{
         // 请求成功是调用resolve ，data为请求成功的数据
            resolve("data")
            console.log('第一次请求');


        },2000)
	//请求成功在then中处理，data为请求成功的数据
    }).then((data)=>{
        console.log(data);
     
     //第二个请求
        return new Promise((resolve,reject)=>{
            setTimeout(()=>{
                console.log('第二次请求');
	// 请求失败是调用reject ，data为请求成功的数据
                reject("data")

            },2000)
        }).then((data)=>{

		//请求失败在catch中处理失败数据，err为reject返回的失败信息
        }).catch((err)=>{
            console.log(err);

        })

    }).catch((data)=>{
        console.log(data);

    })
    
    
    //第二种写法，then中传递两个参数，fulfill和jegect两个函数
    new Promise((resolve,reject)=>{
        // resolve('成功2')
        reject('失败了2')
    
    }).then(data=>{
        console.log(data);
    },err=>{
        console.log(err);
    })
```



#### 18.2 promise 三种状态

- pending 等待状态

![image-20210603091524656](C:\Users\ZX50J\AppData\Roaming\Typora\typora-user-images\image-20210603091524656.png)



####  18.3 promise all

当同时请求两个 展示需要一同展示



```
 Promise.all([
 //第一个请求
      new Promise((resolve,reject)=>{
          resolve('aaa')
      }),

//第二个请求
      new Promise((resolve,reject)=>{
          resolve('bbb')
      }),
      //results为数组 下表为0的事第一个请求结果
  ]).then((results)=>{
      console.log(results[0]);
      console.log(results[1]);
  })

```







## 19.VUEX

#### 19.1 介绍安装

- 状态共享
- 多个组件共享
- 响应式共享

#####  安装

```
npm install vuex --save
```

#### 19.2.使用

- 创建store文件件 创建index.js

```
import Vue from 'vue'
import Vuex from 'vuex'

//1.安装插件
Vue.use(Vuex)
//创建对象
const store = new Vuex.Store({
    state:{
        counter:0
    }
})
// 3.导出
export default store
```

- 在主函数中引用

  ```
  <h2>{{$store.state.counter}}</h2>
  ```

#### 19.3 核心概念

- State
  - 存放状态信息
  - 单一状态树 只创建一个store
- Getters
  - state中状态值需要改变则在getters中处理
- mutation
  - 修改state中的状态调用此函数
- action https://www.bilibili.com/video/BV15741177Eh?p=139
  - 异步操作
- module



#### 19.4 devtools

浏览器安装插件 动态观测state变化



#### 19.5 getters

- 当state状态需要计算等处理的时候需要在getters里面处理 类似cumputed

- 在vue模板中可以直接使用{{$store.getters.getstudentinfo((30))}}调用方法

- 可以调用本身

  - ```
      getstudentlength(state,a){
      
                return a.getstudent.length
            },
    ```

    

- 传递参数，返回一个函数，函数中带参数

- 在vue板块中 通过 {{$store.getters.getstudentinfo((30))}}

  ```
  
  
  
   getstudentinfo(state){
              // return function (age) {
              //     return state.student.filter(s=>{
              //         return s.age>age
              //     })
              // }
              return age=>{
                  return state.student.filter(s=>{return s.age>age})
              }
          },
  ```

  



#### 19.6 mutation

- 对state状态进行操作处理的时候再次方法操作

- 在mutation中添加方法 传入默认参数state

  ```
     addNum(state,num){
              state.counter += num
          },
  
  ```

- 在vue板块中在methods中定义方法调用

- ```
  <button @click="addactionnum(5)">+5</button>
  ```

  ```
  ddactionnum(num){
        this.$store.commit('addNum',num)
      },
  ```

- 传递多个参数

  ```
  
   submitmutildata(){
        this.$store.commit({
          type:'submit',
          agemin:20,
          agemax:60
        })
      }
      
      在index中接收 ，传递参数为对象类型 通过点获取信息
       submit(state,counter){
              console.log(counter);
              console.log(counter.agemax);
               console.log(counter.agemin);
          }
  ```



- 没有定义的信息如果要增加或者修改响应式的应该是Vue.set(state.student, '键值'，‘值’)还可以传输对象 删除使用vue.delete(state.info,age)age 为删除的字段名

- mutation可以设置常量

  - ```
    //index.js中
    import * as mytation from './mutation-type'
      [mytation.ADD](state){
                state.counter++
            },
            
            //app.vue中
            import * as mytation from './mutation-type'
             addaction(){
          this.$store.commit(mymutations.ADD)
        },
    ```



#### 19.7 actions



#### 19.8 modules



https://www.jianshu.com/p/2e5973fe1223

## 20. axios

#### 20.1基本教程

##### 20.1.1 基本安装

https://www.jianshu.com/p/7a9fbcbb1114

```ruby
npm install axios --sav 
```

通过cpn引用

```xml
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
```



#### 20.2 具体使用

```

// 方式一 
axios({
   url:'home/multidata',
   method:'get'
 }).then(result=>{
   console.log(result);
 })

方式二 
// axios.get('home/data?type=sell&page=2').then(res=>{
//   console.log(res);
// })

方式三
axios({
//   url:'home/data',
//   params:{
//     tpye:'sell',
//     page:1
//
//   }
// }).then(res=>{
//   console.log(res);
// })


```

#### 20.3 并发请求

```

//数组传递参数 
 axios.all([
//     axios({
//       url:'home/multidata',
//       method:'get'
//     }),
//   axios({
//     url:'home/data',
//     params: {
//       tpye: 'sell',
//       page: 1
//     }
//
//   }),
// ])
//
// //     .then(results=>{
// //   console.log('病发请求');
// //   console.log(results[0]);
// //   console.log(results[1]);
// // })
// .then(axios.spread((a,b)=>{
//   console.log(a);
//   console.log(b);
// }))
```



####   20.4 抽离工具类 拦截

```
import axios from "axios";


export function request(config){

    const instance =axios.create({
        baseURL:'http://123.207.32.32:8000/',
        timeout:5000
    })

    //局部拦截
    instance.interceptors.request.use(
        config=>{
            console.log(config);
            //拦截之后必须返回，否则失败
            return config

        },error => {
            console.log(error);

        })
    instance.interceptors.response.use()
    //全局拦截
    // axios.interceptors.response.use()

    return instance(config)
}


在js中
request({
  url:'home/multidata',
}).then(res=>{
  console.log(res);
}).catch(err=>{
  console.log(err);
})
```



1. 