package day4_11_6_oop
/*

*   toString 转化为String
*
* */
data class TestData(var age:Int,var name:String)


fun main(args: Array<String>) {
    var testData=TestData(23,"张三")
    testData.copy(45,"李四")
    for (c in testData.toString()) {
        print(c)
    }

    val component1 = testData.component1()
    val component2 = testData.component2()


    println(component1)
    println(component2)

}


/*
*1
*   单一职责
*   插件化
*
*
*
*
*
*
*
*/