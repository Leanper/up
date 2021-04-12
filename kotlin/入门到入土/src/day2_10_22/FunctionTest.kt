package day2_10_22

fun main(args: Array<String>) {

    println(say("你"))
    muilp("张三",5)
    ChangeLength("ss","a","都是")

}


//返回String类型函数
fun say(str:String):String{
    return ("$str:在哔哔")
}

fun muilp(frist :String="ss",second:Int=3) {

    println(frist+second)
}

//在Kotlin中，使用关键字vararg来表示
fun  ChangeLength(vararg str:String){


    println(message = str.toMutableList())

}

