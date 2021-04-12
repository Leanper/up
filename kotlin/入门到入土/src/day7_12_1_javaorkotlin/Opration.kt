package day7_12_1_javaorkotlin

data class Person(var age:Int,var name:String)


    fun Person.study( name:String){
    print("$name 在学习")

    }