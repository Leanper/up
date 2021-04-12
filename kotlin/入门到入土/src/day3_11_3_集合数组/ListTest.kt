package day3_11_3_集合数组

fun main(args: Array<String>) {


    val list:List<Int> = listOf(1,3,67,8)
    val lista:List<Int> = listOf()
    val list2= mutableListOf<Int>()
    list2.add(3);
    list2.add(6);
    list2.add(8);
    list2.add(183);
    list2.add(821);

    var isNull=list2.any()

    println("$isNull")
    MutableListTest()

    var isNull2=list2.any({it%2==0})
    println("$isNull2")

    var count=list2.count()
    println("$count 个数为")
    var count2=list2.count({it%2==0})
    println("$count2 符合规定个数为")
    var max=list2.max()
    var min=list2.min()
    println("$max 最大最小为 $min")
    var takelist=list2.take(4)//挑选集合前几个元素
    var droplist=list2.dropWhile({it%2==0})//去除满足条件的元素，当遇到一个不满足条件的元素时，中止操作，返回剩下的元素子集合。
    print(takelist)
    println(droplist)

    val words = listOf("a", "abc", "ab", "def", "abcd")
    words.groupBy { it.length }
    println( words.groupBy { it.length })//得到类型为{1=[a], 3=[abc, def], 2=[ab], 4=[abcd]}

    println(words.groupBy( { it.length },{it.contains("b")}))//{1=[false], 3=[true, false], 2=[true], 4=[true]}
}


fun MutableListTest(){
    val list= mutableListOf<Int>()
    list.add(3);
    list.add(4);
    list.add(7);
    list.add(5);
    list.iterator()
   var a= list.elementAtOrElse(3,{100})

    list.add(3,43)
    var elementat=list.elementAt(2)
    var elementatornull=list.elementAtOrNull(5)//对应下标为index的元素 没有则为null

    print("下标为4的元素为$a 否则为100\n elementat为$elementat\n elementatornull为$elementatornull\n")
    //集合的遍历
    list.forEach ({
        print("$it,")
    })

    list.forEach(::println)


}