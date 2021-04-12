package inherit

 class Person(names:String):Base(names){

 }

fun main(arg:Array<String>){
 var p=Person("蔡徐坤")
 p.sing()
}