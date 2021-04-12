## kotlin 基础语法
---

### 1函数
 1.1 函数类型
    以fun开头 参数格式为：参数 : 类型
    返回int类型函数
    
    fun sum(a: Int, b: Int): Int {
    return a + b
    }
    
    无返回类型函数 
    fun printSum(a: Int, b: Int): Unit {
    println("sum of $a and $b is ${a + b}")
    }
    
    fun printSum(a: Int, b: Int){
    println("sum of $a and $b is ${a + b}")
    }
 
 
 
 
 ---
 
 ### 2.数据类型
- **Int Long short Double Float Byte**
   +  不支持8进制 2进制使用0b 
    + 字符串是单独数据类型
    
    + 数字中间可以加下划线 方便阅读  val oneMillion = 1_000_000
    
    * 三个等号 === 表示比较对象地址，两个 == 表示比较两个值大小。
        * java的 == 是比较字符串的内存地址，Kotlin的 == 与Java语言的equals方法相等。

#### 字符串对比
    
|kotlin |	java|
|:--:|:----:|
|== |	equal|
|=== |	==|
    
-  类型转化
 
    toByte(): Byte
    toShort(): Short
    toInt(): Int
    toLong(): Long
    toFloat(): Float
    toDouble(): Double
    toChar(): Char
    
- 字符占两个字节
    
- Boolean ture false
    
- 数组
    + 有size get set 三个方法因为使用[]重载了 get set 所以可以通过下标获取相对应信息
    + list.set(index,value)只是替换相应位置的值 不是添加 set没有的位置会报错
    
    + 数组还有IntArray CharArray 等
    
创建数组有两种方式
     
- arrayOf   var arraylist=arrayOf(0,1,2)
- 工厂创建 

---

### 3.常变量
 - 定义常量使用val
    + val a: Int = 1  
    + val b = 1       // 系统自动推断变量类型为Int
    + val c: Int      // 如果不在声明时初始化则必须提供变量类型
    + c = 1           // 明确赋值
    + var x = 5        // 系统自动推断变量类型为Int
    + x += 1           // 变量可修改
 
  - 1.2  变量使用var
  - 1.3vararg可变长度的函数
  

---
  

### 空处理

        //类型后面加?表示可为空  返回可null类型

        var age: String? = "23"
        //抛出空指针异常
        val ages = age!!.toInt()
        //不做处理返回 null
        val ages1 = age?.toInt()
![空判断][1]
        
        
---

### 区间

0..100表示[0,100]   
     1 until 100 表示[0,100)

    for (x in 1..5) {
    print(x)  //输出12345
    }
    
step 步长

    for (x in 1..10 step 2) { //step间隔
    print(x)  //输出13579
    }
    println()
    for (x in 9 downTo 0 step 3) {//downTo降序
    print(x) //输出9630
    }
    
---

### 条件控制
- if else  //val c = if (condition) a else b
- when
```
when (x) {
    1,2 -> print("x == 1or x==2")
    3 -> print("x == 3")
    is Int->判断是否为Int类型 则必须为int否则报错
    else -> { // 注意这个块 相当于switch里面的default
        print("x 不是 1 ，也不是 2")
        }
    }
```
---   

### 循环
跳出循环方式
    return。默认从最直接包围它的函数或者匿名函数返回。
    break。终止最直接包围它的循环。  跳出循环
    continue。继续下一次最直接包围它的循环。
    
    正常循环：

    for (i in 1..4) print(i) // 打印结果为: "1234"

如果你需要按反序遍历整数可以使用标准库中的 downTo() 函数:
    
    for (i in 4 downTo 1) print(i) // 打印结果为: "4321"

也支持指定步长：

    for (i in 1..4 step 2) print(i) // 打印结果为: "13"

    for (i in 4 downTo 1 step 2) print(i) // 打印结果为: "42"

如果循环中不要最后一个范围区间的值可以使用 until 函数:

    for (i in 1 until 10) { // i in [1, 10), 不包含 10
     println(i)
    }
    



# [X]标签

### 类
+ kotlin中使用class声明类 后面紧跟类名


    class KotlinDemo{//KotlinDemo是类名
    //类具体内容
        fun methond(){
        print("成员函数")
        }
    }
    
+ 类的属性
    + 关键字可以使用var val（不可修改）修饰
    + 属性名：类型
    
    



    class Runoob {
    var name: String = ……
    var url: String = ……
    var city: String = ……
    }

#### 构造器


### 继承
- Kotlin 中所有类都继承该 Any 类，它是所有类的超类
    - Any默认提供三个函数
        - hashCode() toString() equal()
 - 一个类被继承可以使用open来修饰
 - 一个方法要是被重写也必须在父类中使用open修饰
 

    


### 接口
- 接口使用interface修饰
- 可以实现多个接口，中间用分号隔开


    interface MyInterface {
        fun bar()    // 未实现，实现接口主动重写为实现的方法
        fun foo() {  //已实现  实现方法体的则不会主动实现
          // 可选的方法体
          println("foo")
        }
    }
    
    class D : A, B {
    override fun foo() {
        super<A>.foo()//实现多个接口相同方法名的接口时 在super中写清楚是哪个类方法
        super<B>.foo()
    }

### 扩展
- Kotlin 可以对一个类的属性和方法进行扩展，且不需要继承或使用 Decorator 模式。扩展是一种静态行为，对被扩展的类代码本身不会造成任何影响。
- 扩展函数并不是真正地修改了原来的类，它是以静态导入的方式来实现的。扩展函数可以被声明在任何文件中，因此我们可以把一系列有关的函数放在一个新建的文件里。
    

    class ExpandDemo{
    fun show(){
        print("展示内容")
    }
    }
    fun main(a:Array<String>){
     var e=ExpandDemo()
     e.show()
     e.info()
    }

    //扩展函数
     fun ExpandDemo.info(){
      print("展示相对用信息")
     }
- 可以任意地方扩展相对应函数

### 密封类 数据类
### 泛型
### 枚举
### 对象表达式/声明
### 委托

---


  [1]: ./images/1559723883843.jpg "1559723883843.jpg"