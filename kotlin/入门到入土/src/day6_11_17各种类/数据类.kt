package day6_11_17各种类

/*
* TODO 数据类
*
* */



data class Student(val name: String, val age: Int) {
    var Score: Int = 4

}


fun main(){
    var s=Student("张三",3)
    if (s.name.equals("张三"))
        println("法外狂徒张三")
    s.Score=90

    println(s.Score)
}