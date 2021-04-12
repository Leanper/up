package NullJudge

//返回可null类型
 fun  getName():String?{
    return null
}

//fun getSex():String{
//    return ""
//}
fun main(args: Array<String>) {

    val name = getName()?:return//如果为空返回 不为空输出 地下？.提示Unnecessary safe call on a non-null receiver of type String 表示没必要 不可能为空
//    println(name?.length)//如果为空输出0 不为空输出长度
    println(name.length)//如果为空输出0 不为空输出长度  这里不再继续执行 return了
//    print(getSex().length)
    val str:String?="hell"
    println(str!!.length)// 表示充分证明上面不为空 作死没人拦着的意思
}