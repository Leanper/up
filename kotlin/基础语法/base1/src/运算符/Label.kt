package 运算符

class Label{
    var b=1
    inner class InnerClass(var name:String){
      open  fun Int.info(){
            var a=this@InnerClass
            var b=this@Label

            var names=this@InnerClass.name.toString()
            println("$a")
            println("$names")
            println("$b")
        }
    }

    fun test(){
        var name=InnerClass("那么")
        println(InnerClass("sssssssss"))
    }


}

fun main(args: Array<String>) {
//    var label=Label()
//    label.InnerClass("sss")
//    label.test()
//
//    println(label.InnerClass("a").toString())
//    println(label.InnerClass("rra").name)



}