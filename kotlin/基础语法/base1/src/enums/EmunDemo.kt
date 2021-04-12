package enums

enum class EmunDemo {
    RED,GREEN,PINK,ORANGE,BLACK,BLUE
}



fun main(args: Array<String>) {
    var color:EmunDemo=EmunDemo.BLUE

    println(EmunDemo.values())
    println(EmunDemo.valueOf("RED"))
    println(color.name)
    println(color.ordinal)
}