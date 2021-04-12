package Classes

class cat( 性格:String,姓名:String):animal(性格,姓名){

}

class dog constructor( 性格:String, 姓名:String):animal(性格,姓名)


open class animal(var 性格:String,var 姓名:String){
    init {
        println("父类继承中的性格$性格")
    }
}



fun main(args: Array<String>) {
    val mcat=cat("好","猫")
       val mdog=dog("好","狗")
    println(mdog is animal)
    println("${mdog.姓名}")




}