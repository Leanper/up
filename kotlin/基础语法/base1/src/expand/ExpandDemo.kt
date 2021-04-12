package expand

class ExpandDemo{
    fun show(){
        print("展示内容")
    }
}
 fun main(a:Array<String>){
   var e=ExpandDemo()
     e.show()
     e.info()
 }

//扩展函数
  fun ExpandDemo.info(){
      print("展示相对用信息")
  }


