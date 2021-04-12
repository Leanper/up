package day2_10_22

import day7_12_1_javaorkotlin.PersonBeanJava
import day7_12_1_javaorkotlin.StudentBean as sb


fun main(args: Array<String>) {
    intest()
    whentest(3)
    istest(3)
    istest("sss")
    withtest()
    lettest("")
    runtest()

    applyTest()



}
/*
* apply 同let also with run
* 定义一个作用域
* apply 返回整个对象
*
* */
fun applyTest(){
    var sb=sb().apply {
        println("apply 函数$age $name")
    }
    var s2b=sb()?.run {
        println("run 函数$age $name")
    }

    println("apply返回对象-》$sb")
    println("run返回String-》$s2b")

}

/*
* run调用
* */
fun runtest(){
    var p=sb()
    var a=PersonBeanJava()
    //或者p.run
    p?.run {
        println("$name $age $score")
    }

    //a不为空是 执行
    a.run {
        println("personBeanJava-->$name $age $score")

    }
}


/*
*
* let 调用
* */
fun lettest(str:String){

      //表示str不为空时执行操作 使用let函数
      str?.let{
          println("长度为${it.length} ")
      }
//      不使用let则为   str?.函数方法

  }



/*
* with调用对象的多个方法省略
* */
 fun withtest(){
     var s=sb()
    //with（s） 或者with(sb（）)同run一样
     with(sb()){
         age=3
         name
         score
         println("with 运行$score $name")
     }


 }

/*
* in调用
* */
fun intest() {
    var x:Int=5
    //如果存在于区间(1,Y-1)，则打印OK
    if (x in 1..10)
        println("OK")
//    array= arrayOf(3,4);
////如果x不存在于array中，则输出Out
//    if (x !in 0..array.lastIndex)
//        print("Out")

//打印1到5
    for (x in 1..5)
        print(x)

////遍历集合(类似于Java中的for(String name : names))
//    for (name in names)
//        println(name)
//
////如果names集合中包含text对象则打印yes
//    if (text in names)
//        print("yes")
}

fun whentest(obj: Any) {

//    类似于 Java 中的 switch，但是 Kotlin 更加智能，可以自动判断参数的类型并转换为响应的匹配值。

        when (obj) {

            in 1..10-> print("else类似于Java中的default")
            1       -> println("第一项")
            "hello" -> print("这个是字符串hello")
            is Long -> print("这是一个Long类型数据")
            !is String -> print("这不是String类型的数据")
            else    -> print("else类似于Java中的default")
        }


}

//智能类型推测
/*
判断一个对象是否为一个类的实例，可以使用is关键字
与 Java 中的instanceof关键字类似，但在 Kotlin 中如果已经确定了一个对象的类型，可以在接下来的代码块中直接作为这个确定类型使用。
*/
fun istest(obj:Any) {
    if (obj is String) {
        // 做过类型判断以后，obj会被系统自动转换为String类型
       println("$obj:是String")
    }

    //同时还可以使用!is，来取反
    if (obj !is String){
        println("$obj：不是String")
    }

    // 代码块外部的obj仍然是Any类型的引用

}