package day3_11_3_集合数组

fun main(args: Array<String>) {

    var arr= arrayOf(1,2,4,5,6,7,3)

    for (v in arr){
        print("$v\t")
    }
    print("\n")
    //用于创建一个指定数据类型且可以为空元素的给定元素个数的数组
    val arrayOfNulls = arrayOfNulls<Int>(2)

    arrayOfNulls.set(0,3)
    arrayOfNulls.set(1,2)
//    arrayOfNulls.set(2,4)
    for (v in arrayOfNulls){
        print("$v\t")
    }
//    https@ //www.cnblogs.com/Jetictors/p/7722417.html

}