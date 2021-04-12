package day4_11_6_oop

open class Base{

  open  fun showLog(loginfo:String){
        println("base信息为 $loginfo")
    }
}


class Test: Base() {

     override fun showLog(loginfo: String) {
        super.showLog(loginfo)
         println("sssssssssssssss")
    }

}


open class Animal(name:String){
    var secondName:String
    init {
        secondName="动物别名"
    }

    open fun Skill(skill:String){
        println("这个${secondName}小动物技能是 $skill")
    }


}


class pig:Animal("猪"){
    override fun Skill(skill: String) {
        super.Skill(skill)
        println("还可以吃")
    }

    fun Skill(){
        println("风口浪尖的你")
    }
}

fun main(args: Array<String>) {
    var t=Test()
    t.showLog("库你洗哇")

    var p=pig()
    //调用父类的skill 同时调用子类的方法  若只调用父类则子类不重写父类方法 只掉子类则去掉super.Skill(skill) 中的super另写方法
    p.Skill("长肉")
    p.Skill()
}

