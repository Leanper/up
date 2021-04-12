package inherit

 class  Person1:Base1(){
    override fun jump(name: String) {
     print("${name}在rap")

    }


 }

fun main(arg: Array<String>){
 var p=Person1()
    p.jump("傻狍子")
}