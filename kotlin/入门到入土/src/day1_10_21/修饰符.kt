package day1_10_21

fun main(args: Array<String>) {
  var t=ThisDemo()
    t.whatthis()
    t.howThis()

}

/*
* TODO this 关键字
* this 关键字持有当前对象的引用。我们可以使用this来引用变量或者成员函数，也可以使用return this，来返回某个类的引用
* */

 class ThisDemo{
 var thisit="全局定义变量"

     fun whatthis(){

         println(thisit)

     }

     fun howThis(){
         thisit="局部变量"
         println(this.thisit)


     }

}