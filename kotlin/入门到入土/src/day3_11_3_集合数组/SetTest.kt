package day3_11_3_集合数组

fun main(args: Array<String>) {
setTest()
}

fun  setTest(){
    var set=setOf(3,78,34,20,"s","a")

    var isempty=set.isEmpty()
    var contains=set.contains("a")
    println(isempty)
    println(contains)
    set.forEach { println(it) }

    val ms = mutableSetOf(1,3,2,7)
    ms.forEach({println(it)})
    ms.removeIf { it%2==0 }
    ms.forEach({println(it)})

}