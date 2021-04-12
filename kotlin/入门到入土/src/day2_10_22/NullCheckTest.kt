package day2_10_22
/*
* 空类型判断
* */

class A{

    fun MutableList<Int>.swap(index1: Int, index2: Int) {
        val tmp = this[index1]     //  this 对应该列表
        this[index1] = this[index2]
        this[index2] = tmp
    }
    fun A.test(){
        println("扩展")
    }
}

fun A.test(){
    println("扩展函数test")
}

class C {
    fun foo() { println("成员函数") }
}

fun C.kuo() { println("扩展函数") }


fun main(args: Array<String>) {

    var c = C()
    c.foo()
    C().kuo()
    var s=A()
    s.test()


    //Str 可为空 为空时返回默认值 可以定义为null
    var Str: String?="ss"
    var str1:String?=null
    println(Str)
    if(str1===null){
        println(str1)

    }

    //抛出空异常
    var num="asd"
//    var nums=num!!.toInt()
//    println(nums)


    //不做处理返回 null
//    var num2=num?.toInt()?:1
//    println(num2)
    var str2:String=null?:"不做处理"

    println(str2)



    //长度
    println("方法判断${getStringLength("ss")}")
    println("方法判断${getString("a")}")
    var getstr=getString("啊")
    if( getstr ==null){
        println("返回类型为空")
    }else
        println("不空")


}

    fun getStringLength(obj: Any): Int? {
        if (obj !is String)
            return 0
        // 在这个分支中, `obj` 的类型会被自动转换为 `String`
        return obj.length
    }

    fun getString(ibj:Any):String?{

        if (ibj.equals("啊"))
        return ibj.toString()
        else
            return null
    }