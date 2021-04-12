package Lists

import base1.xunhuan

fun main(args: Array<String>) {
    xunhuans()
}
 fun  xunhuans(){
     val items = listOf(1, 2, 3, 4)

     for (i in items.indices) {
         print(items[i])
     }

//     注意这种"在区间上遍历"会编译成优化的实现而不会创建额外对象。
//     或者你可以用库函数 withIndex：
     for ((index, value) in items.withIndex()) {
         println("the element at $index is $value")
     }


 }