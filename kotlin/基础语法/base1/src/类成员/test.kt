package 类成员

class test(var 姓名:String,var 性别:String){

    fun name(){
        println("$姓名 叫")
    }

}

fun main(args: Array<String>) {
    for (i in 0..100){
        var a=i.toChar()

        }
//        println(i)
    }// 输出“13”

    var list=listOf(1,2,4,5,6,7,9,6,5,3,0)
//    list.forEach zhe@ {
////        if(it==5) return@zhe
//        if(it==5) return@zhe
//        println(it)
//    }
//    breakDemo2()
//
//    println(sum(4,5))
//}


fun breakDemo2(){
    println("START : "+::breakDemo2.name)
    outer@ for ( out in 1..5){
        println("outer $out")
        for (inner in 1..5){
            if(inner % 2 == 0){
                break@outer
            }
            println("inner $inner")
        }
    }
    println(" END : "+::breakDemo2.name)
}
var sum  ={a:Int,b:Int->a+b}
