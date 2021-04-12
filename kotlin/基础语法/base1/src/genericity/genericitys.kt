package genericity

                /*
                * @Author Leanper
                * @Description //TODO  泛型的学习
                * @Date  2019/5/30
                **/
class genericitys {



}
fun main(arg:Array<String>){
    val mList: List<Int> = listOf(0, 1, 2, 3, 4, 5)

   mList.forEach { print(it) }
}

 class Test<Int>{}
