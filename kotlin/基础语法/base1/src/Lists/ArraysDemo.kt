package Lists

//闭区间[2,1024]
val aRange: IntRange = 2..1024
//半闭区间[0,1024) = [0,1023]
 val bRange: IntRange = 0 until 1024
//空区间
 val emptyRange: IntRange = 0..-1
 fun main(args: Array<String>) {
//证明这个区间实际上是没有的，是空的
 println(emptyRange.isEmpty()) //true
 println(aRange.contains(500))
     println(50 in aRange)
//等于上一句
 println(aRange.contains(5000))
//用区间进行迭代
 for (i in bRange){
//用字符串模版
     print("$i,") } }
