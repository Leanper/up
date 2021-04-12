package base1

import sun.rmi.runtime.Log
import kotlin.random.Random

var TAG = "MainActivity"

    /** 我是main入口函数 **/
    fun main() {
        test(name = "sssss")
        vars(1,2,3,4,9)
        var c:Int
//        print(c)

//        val sumLambda: (Int, Int) -> Int = {x,y -> x+y}
//        val sum = { x: Int, y: Int -> 2 + 3 }
//        println(sumLambda(1,2))  // 输出 3
////        value()
        checkNull()
        val a="ddd"
        println(a.trimMargin())
        val s = "runoob"
        val str = "$s.length is ${s.length}${a.length}" // 求值结果为 "runoob.length is 6"
//        println(str)
//        game()
        array()
        xunhuan()
        var classvalue=Classess()
        classvalue.age=1
        classvalue.name="ssss"
        classvalue.sex='男'
        println(classvalue.toString())

        getStringLength(8)
//        describe(1)
//        describe("Hello")
//        describe(12345678L)
//        describe('c')

//        val sumLambda: (Int, Int) -> Int = {x,y -> x+y}
//        println(sumLambda(1,2))  // 输出 3
        whens()

    }

        fun test(name:String){
            print(name)
        }



    fun vars(vararg v:Int){
    for(vt in v){
        print(vt)
    }
}

    fun whens(){
    var a="s"
    when(a){
        is String-> println("sssssss")
        else-> print("else")
    }
}

    fun array(){
        var list=arrayOf(1,2,3,"ff")
        list.set(2,"ff")
        //[0,2,4]
        val b = Array(3, { i -> (i * 2) })
        for (li in list){
            println(li)
        }
        for (li in b){
            println(li)
        }
        var mylist=Array(list.size,{ Random(3).nextInt()})

        for(a in mylist){
            println(a)
//            http://106.39.228.248:8090/backstage/index
//
//            账号：13272143450/罗密欧
//            密码：123456




        }

    }

    fun game(){
    val a=100
    val b=100
      val c=a
      val d=a


        //经过了装箱，创建了两个不同的对象
        val boxedA: Int? = a
        val anotherBoxedA: Int? = a


       if (boxedA===anotherBoxedA){
           println("a====b")
       }
        if (boxedA==anotherBoxedA){
            println("a===b")

        }

        if (a===c){
            println("a===c")

        }
        if (a==c){
            println("a===c")

        }

        if (a===d){
            println("a==b=c")

        }
        if (a==d){
            println("a=b==c")

        }
    }
    //定义类型
    fun value(){
        val a:Int=1//定义类型 赋值
        print(a)

        var b:Int//未初始化 错误 使用之前需要赋值
        b=2
        print(b)

        var c=3 //直接赋值 系统识别类型
        println("类型$c/c.")

        c=10
        println(c)

        val str="this is for you"



        println("z分割为 ${str.replace('o','a')}")
        println("z分割为 ${str.replaceAfter('s',"我")}")


    }

    //检查为空状态
    fun checkNull(){
        //类型后面加?表示可为空
        var age: String? = "23"
        //抛出空指针异常
        val ages = age!!.toInt()
        //不做处理返回 null
        val ages1 = age?.toInt()
        val a:Int=10
        val b:Int=1

        //age为空返回-1
        val ages2 = age?.toInt() ?: -1
        println(age+"="+ages+"=="+ages1+"==="+ages2)
        if (b>a)
            print("ssssssssssss")
        else
            print("aaa")




    }


    fun getStringLength(obj: Any): Int? {
    if (obj is String) {
        // `obj` 在该条件分支内自动转换成 `String`
        println("ddddddddddd")
        return obj.length
    }

    // 在离开类型检测分支后，`obj` 仍然是 `Any` 类型
        println("null")

        return null
}

    fun xunhuan(){

        var x = 5
        while (x > 0) {
            x--
//            if(x==3){
//                break
//            }
//            if (x==2){
//                continue
//            }
//
            if (x==3){
                return
            }
            println( x)
        }




        val items = listOf("apple", "banana", "kiwifruit")
        items.forEach {
            print("foreach$items")
        }
        var index = 0
        while (index < items.size) {
            println("item at $index is ${items[index]}")
            index++
        }

        for (x in 1..10 step 2) {
            print(x)
        }
        println()
        for (x in 9 downTo 0 step 3) {
            print(x)
        }

        fun describe(obj: Any): String =
            when (obj) {
                1 -> "One"
                "Hello" -> "Greeting"
                is Long -> "Long"
                !is String -> "Not a string"
                else -> "Unknown"
            }
    }





