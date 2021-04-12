package day9_12_4面向函数编程fop


infix fun Int.a(x:Int):Int{

    return x
}

infix fun String.codes(str:String):String{

    return "我是中缀函数$str"

}

fun main(args: Array<String>) {

    println("输出" codes "东风浩荡")

}