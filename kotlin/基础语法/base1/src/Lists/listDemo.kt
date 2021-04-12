package Lists

 fun main(agr:Array<String>){
     list1()
     line()
     Mutablelist()
     line()
     arrayLists()
     line()
     listfun()
     demo()
 }

 fun list1(){
     //listOf 创建数组不可修改只读
     val mlist=listOf(1,3,4,5,"2")
     //mlist.add() 错误没有该方法
     //定义集合的泛型
     val mLists:List<Int> = listOf(1, 3, 5, 7, 9)

     var arraylist=arrayListOf<Int>()
     arraylist.add(3)
     mlist.forEach {
         print(it)
     }
     // 遍历
     for(value in arraylist){
         print("$value \t")
     }
 }

 fun Mutablelist(){
     var mlist =mutableListOf(2)
     mlist.add(1,5)
     mlist.add(2,3)
//     mlist.add(5,555) 添加index越位的 indexoutboundException
     mlist.add(3)
     var m=listOf(13,23,42,333)
     mlist.addAll(m)
     print(mlist)
 }
 fun arrayLists(){
     var array= arrayListOf(1,3,"44")
     array.add("集合")
     array.forEach{
         print(it)
     }
 }
 fun listfun(){
     var lists=listOf(3,4,8,5)
    var sum=lists.sum()
     println(sum)
     val max = lists.max()
     print(max)
     lists.forEachIndexed{
         index,value->
         println("$index,$value==")
     }




     var boolean=lists.any { it % 2 == 0 }         // 如果至少有一个元素符合给出的判断条件，则返回true
        print(boolean)


     val list = listOf(1, 2, 3, 4, 5, 6)
     list.any { it % 2 == 0 }         // 如果至少有一个元素符合给出的判断条件，则返回true
     list.all { it % 2 == 0 }         // 如果全部的元素符合给出的判断条件，则返回true
     list.count { it % 2 == 0 }       // 返回符合给出判断条件的元素总数
     list.forEach { println(it) }     // 遍历所有元素，并执行给定的操作
     list.forEachIndexed { index, value -> println("position $index contains a $value") }
     // 与 forEach ，但是我们同时可以得到元素的index
     println(list.max())                  // 返回最大的一项，如果没有则返回null
     list.maxBy { -it }               // 根据给定的函数返回最大的一项，如果没有则返回null
     list.min()                       // 返回最小的一项，如果没有则返回null
     list.minBy { -it }               // 根据给定的函数返回最小的一项，如果没有则返回null
     list.sumBy { it % 2 }            // 返回所有每一项通过函数转换之后的数据的总和

     list.drop(4)                     // 返回包含去掉前n个元素的所有元素的列表
     list.filter { it % 2 == 0 }      // 过滤所有符合给定函数条件的元素

     list.contains(2)                 // 如果指定元素可以在集合中找到，则返回true
     list.elementAt(1)                // 返回给定index对应的元素
     list.first { it % 2 == 0 }       // 返回符合给定函数条件的第一个元素
     list.indexOf(4)                  // 返回指定元素的第一个index，如果不存在，则返回 -1
     list.indexOfFirst { it % 2 == 0 }
     // 返回第一个符合给定函数条件的元素的index，如果没有符合则返回 -1
     list.indexOfLast{ it % 2 == 0 }  // 返回最后一个符合给定函数条件的元素的index，如果没有符合则返回 -1

     println(list)
     list.reversed() // 返回一个与指定list相反顺序的list
     println(list.reversed())

     list.sorted()
//     list.sortBy { it % 3 }          // 返回一个根据指定函数排序后的list
  print(list.first())

 }
 //分割线
 fun line(){
     println("\n------------------------------------------------------------\n")
 }

 fun demo(){
     val items = listOf(1, 2, 3, 4)
     print(items.first())
     print(items.last())
//filter接受一个函数为参数，函数类型为“(T) -> Boolean”
//filter会将集合中的每一个元素分别传入该函数，如果函数返回true，则保留该元素
     items.filter { it % 2 == 0 } // 返回 [2, 4]

     val rwList = mutableListOf(1, 2, 3)
//返回集合中非null的元素，这里会返回[1, 2, 3]
     rwList.requireNoNulls()
//rwList.none { it > 6 }:集合中是否没有大于6的元素
     if (rwList.none { it > 6 }) println("No items above 6") //输出“No items above 6”
//返回集合中的第一个元素，如果集合为空则返回null
     val item = rwList.firstOrNull()

     val readWriteMap = hashMapOf("foo" to 1, "bar" to 2)
     println(readWriteMap["foo"]) //输出“1”


     val list = listOf(1, 2, 3, 4, 5, 6)

//只要集合中的任何一个元素满足条件(使得lambda表达式返回true)，any函数就返回true
     list.any {
         it >= 0
     }

//集合中的全部元素都满足条件(使得lambda表达式返回true)，all函数才返回true
     list.all {
         it >= 0
     }

//若集合中没有元素满足条件（使lambda表达式返回true），则none函数返回true
     list.none {
         it < 0
     }

//count函数的返回值为：集合中满足条件的元素的总数
     list.count {
         it >= 0
     }



     //遍历所有元素
     list.forEach {
         print(it)
     }

//同forEach，只是可以同时拿到元素的索引
     list.forEachIndexed { index, value ->
         println("position $index contains a $value")
     }

//返回集合中最大的元素，集合为空(empty)则返回null
     list.max()

//返回集合中使得lambda表达式返回值最大的元素，集合为空(empty)则返回null
     list.maxBy { it }

//返回集合中最小的元素，集合为空(empty)则返回null
     list.min()

//返回集合中使得lambda表达式返回值最小的元素，集合为空(empty)则返回null
     list.minBy { it }


     //返回一个新List，去除集合的前n个元素
     list.drop(2)
//返回一个新List，去除集合的后n个元素
     list.dropLast(2)
//返回一个新List，去除集合中满足条件(lambda返回true)的第一个元素
     list.dropWhile {
         it > 3
     }
//返回一个新List，去除集合中满足条件(lambda返回true)的最后一个元素
     list.dropLastWhile {
         it > 3
     }

//返回一个新List，包含前面的n个元素
     list.take(2)
//返回一个新List，包含最后的n个元素
     list.takeLast(2)
//返回一个新List，仅保留集合中满足条件(lambda返回true)的第一个元素
     list.takeWhile {
         it>3
     }
//返回一个新List，仅保留集合中满足条件(lambda返回true)的最后一个元素
     list.takeLastWhile {
         it>3
     }

//返回一个新List，仅保留集合中满足条件(lambda返回true)的元素，其他的都去掉
     list.filter {
         it > 3
     }
//返回一个新List，仅保留集合中不满足条件的元素，其他的都去掉
     list.filterNot {
         it > 3
     }
//返回一个新List，仅保留集合中的非空元素
     list.filterNotNull()

//返回一个新List，仅保留指定索引处的元素
     list.slice(listOf(0, 1, 2))



     list.contains(2)

     list.elementAt(0)
//返回指定索引处的元素，若索引越界，则返回null
     list.elementAtOrNull(10)
//返回指定索引处的元素，若索引越界，则返回lambda表达式的返回值
     list.elementAtOrElse(10) { index ->
         index * 2
     }

//返回list的第一个元素
     list.first()
//返回list中满足条件的第一个元素
     list.first {
         it > 1
     }
//返回list的第一个元素,list为empty则返回null
     list.firstOrNull()
//返回list中满足条件的第一个元素，没有满足条件的则返回null
     list.firstOrNull {
         it > 1
     }

     list.last()
     list.last { it > 1 }
     list.lastOrNull()
     list.lastOrNull { it > 1 }

//返回元素2第一次出现在list中的索引，若不存在则返回-1
     list.indexOf(2)
//返回元素2最后一次出现在list中的索引，若不存在则返回-1
     list.lastIndexOf(2)
//返回满足条件的第一个元素的索引
     list.indexOfFirst {
         it > 2
     }
//返回满足条件的最后一个元素的索引
     list.indexOfLast {
         it > 2
     }

//返回满足条件的唯一元素，如果没有满足条件的元素或满足条件的元素多于一个，则抛出异常
     list.single {
         it == 5
     }
//返回满足条件的唯一元素，如果没有满足条件的元素或满足条件的元素多于一个，则返回null
     list.singleOrNull {
         it == 5
     }



     val listWithNulls: List<String?> = listOf("A", null)
     for (item in listWithNulls) {
         item?.let { println(it) } // 输出 A 并忽略 null
     }



//     //获取群成员的所有详细信息
//     val ids = ArrayList<String>()
//     for (i in timGroupMemberInfos.indices) {
//         val timGroupMemberInfo = timGroupMemberInfos[i]
//         val user = timGroupMemberInfo.user
//         ids.add(user)
//     }
//
//     //获取群成员的所有详细信息
//     val ids = timGroupMemberInfos.indices
//         .map { timGroupMemberInfos[it] }
//         .map { it.user }
//
//
//     val id = message.msgUniqueId
//     for (msg in messageList) {
//         if (msg.message.msgUniqueId == id){
//             if(code==80001){
//                 //发送内容包含敏感词
//                 msg.desc = getString(R.string.chat_content_bad)
//                 chatAdapter?.notifyDataSetChanged()
//             }else if(code==114000){
//
//             }
//         }
//     }
//
//
//     val id = message.msgUniqueId
//     for (msg in messageList) {
//         if (msg.message.msgUniqueId == id){
//             if(code==80001){
//                 //发送内容包含敏感词
//                 msg.desc = getString(R.string.chat_content_bad)
//                 chatAdapter?.notifyDataSetChanged()
//             }else if(code==114000){
//
//             }
//         }
//     }
//     替换成：
//     messageList
//         .filter { it.message.msgUniqueId == id }
//         .forEach {
//             when (code) {
//                 80001 -> {
//                     //发送内容包含敏感词
//                     it.desc = getString(R.string.chat_content_bad)
//                     chatAdapter?.notifyDataSetChanged()
//                 }
//                 114000//要发送的资源文件不存在
//                 -> {
//                 }
//             }
//         }
//


     val names = mutableListOf("AbsZd", "Tdsd", "Xsdf", "Ssdfsd")
     names.filter { it.startsWith("A") }
         .sortedBy { it }
         .map { it.toUpperCase() }
         .forEach {
             print( it)
         }


 }