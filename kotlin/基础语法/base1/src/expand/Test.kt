package expand

fun main(a:Array<String>){
    var e=ExpandDemo()
    e.show()
    e.info()
    e.outside()
    show()

}
 fun ExpandDemo.outside(){
     print("类外扩展")
 }

    fun show(){
        print("展示")

    }

