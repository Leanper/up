package day4_11_6_oop


//在构造函数中声明的参数，它们默认属于类的公有字段，可以直接使用，如果你不希望别的类访问到这个变量，可以用private修饰。
class Person(){

     var name:String

// 初始化构造函数 创建默认值
    init {
        name="默认是李四"
    }
    //internal是权限修饰符 只能在改模块下调用
    internal fun sayHello(){
        println("hello:$name")
    }

    constructor(desc:String,age:Int):this(){
       fun sayHello(){
         println("hello:$desc 年龄为$age")
     }
    }
}


fun main(args: Array<String>) {
    var p=Person("s",3)
    p.sayHello()



}