package day5_11_9




class Animal(type:String){
    internal var name:String
    init{
        name="默认姓名"
    }

}
fun Animal.eat(name:String){
    println("输出日志为：---> $name")
}

fun Animal.showSkill(name:String,skill:String){
    println("$name 的技能为$skill")

}

fun Animal.showTomst(skill:String){
    println("$name 的技能为$skill")

}









fun main(args: Array<String>) {
    var b=Animal("试试")
    b.showTomst("ssss")
    b.showTomst("吐司")

    var  a=Animal("")




}