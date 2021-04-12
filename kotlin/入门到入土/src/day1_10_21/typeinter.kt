package day1_10_21

const val d:Int =13
fun main(){

    var a=10;
    // a=99999999999;  The integer literal does not conform to the expected type Int类型自动推断 上面定义为=10 则自定认为为int 类型
    var b=9999999909
    var c="hhhhh";
//    c=30 报错 类型不同


    //自定义类型
    val d:Int =10
    var e:Double=10.2
    var f:String="撒"


    println("$d:face")
//    f.toInt();//通过toInt toString toFloat 转化类型

    /*
    * TODO 判断常量变量类型
    * */
    var ass=7
    println(ass is Int)
    println(ass::class)
    println(ass::class.java)


    /*
    * TODO label标签的使用
    * */
    var list=listOf(1,2,3,4,5)
    list.forEach here@{
        if(it%2==0){
            return@here
        }else{
            print(it)
        }}




}