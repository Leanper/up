package day6_11_17各种类

import day5_11_9.Animal

enum class myColors(var rbg:Int){
    RED(0xFF0000),
    GREEN(0x00FF00),
    BLUE(0x0000FF)
}

enum class eachState{
    Normal,
    Work,
    TouchFish,
    Sleep
}

fun main(args: Array<String>) {
    var y=myColors.BLUE
    var a=1
    if(a>0)
    y=myColors.GREEN
    println("$y")

}