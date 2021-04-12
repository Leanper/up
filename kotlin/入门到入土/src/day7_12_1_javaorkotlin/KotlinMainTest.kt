package day7_12_1_javaorkotlin


fun main(args: Array<String>) {

    getKotlinString("sasa")

    var javamainTest=JavaMainTest()
    var getJavaString=javamainTest.getJavaString("hjghj")
    println("获取java返回字段$getJavaString")


    getJavaBean()

    var p=Person(2,"a")
    //调用同一个对象多个方法 则用with调用 使用方法
    with(p){
        age=3
        print("$age $name")
    }

}

/*
* 调用java的bean
* */
fun getJavaBean(){
    var p=PersonBeanJava()
    p.age=2
    p.name="张三"
    p.score=99
    println("${p.age.toInt()}+ ${p.name.toString()}")
}

 fun getKotlinString(name:String):String?{

     if (name.length>3)
         return name
     else
         return null
 }


