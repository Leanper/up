package DataType
    /*
         * @Author Leanper
         * @Description //TODO  基本数据类型 String
         * @Date  2019/6/5
         **/
fun main(args: Array<String>) {
    booleanType()
    numberType()
    stringType()
}


 fun booleanType(){
     val mBoolean:Boolean=false
     val anotherBoolean=false
     println(mBoolean)

     println(mBoolean.and(anotherBoolean))//都为真为真
     println(mBoolean.or(anotherBoolean))//有一个为真返回ture
     println(mBoolean.xor(anotherBoolean))//都一样为真 不一样为假
     println(mBoolean.not())

 }


fun numberType() {

    var aInt=34
    var str ="45La"
    println(aInt.toFloat())
/*查看数字内置类型的最大和最小表示范围*/
    println("Int min:" + Int.MIN_VALUE)
    println("Int max:" + Int.MAX_VALUE)
    println(Math.pow(2.0,31.0))

    println("Long min:" + Long.MIN_VALUE)
    println("Long max:" + Long.MAX_VALUE)

    println("Float min:" + Float.MIN_VALUE)
    println("Float max:" + Float.MAX_VALUE)

    println("Double min:" + Double.MIN_VALUE)
    println("Double max:" + Double.MAX_VALUE)

    println("Short min:" + Short.MIN_VALUE)
    println("Short max:" + Short.MAX_VALUE)

    println("Byte min:" + Byte.MIN_VALUE)
    println("Byte max:" + Byte.MAX_VALUE)


}

fun stringType(){
    var mString:String="he"
    val fromchar:String= String(charArrayOf('h','e'))
    println(mString==fromchar)
    println(mString===fromchar)

    var name="hello \"Leanper\""
    println(name.length)
    var salary=1000_000
    println("$$salary")

    val str="""
        sssssssssssssssssss
        $salary
        d
        ss
    """.trimIndent()
    println(str)
}
