package day4_11_6_oop

abstract class abstractPerson(){
    abstract var type:String
    abstract var addr : String
    abstract fun doit()
    abstract fun doEat()
    abstract fun doWalk()

    fun doSwim() {
        println("I am Swimming ... ")
    }
    open fun doSleep() {
        println("I am Sleeping ... ")
    }

}

abstract class abstractDog(){
    abstract var type:String



    abstract fun doType()
    abstract fun doLookDoor()

    fun doSwim() {
        println("Dog am Swimming ... ")
    }
    open fun doSleep() {
        println("Dog am Sleeping ... ")
    }

}

class abstractTest():abstractPerson() {
    override var type: String
        get() = TODO("not implemented") //To change initializer of created properties use File | Settings | File Templates.
        set(value) {}
    override var addr: String
        get() = TODO("not implemented") //To change initializer of created properties use File | Settings | File Templates.
        set(value) {}

    override fun doit() {

    }


    override fun doEat() {

    }

    override fun doWalk() {
        println("走路 ")
    }

    override fun doSleep() {
        println("睡觉 ")

    }



}

fun main(args: Array<String>) {
    var t= abstractTest()
    t.doEat()
    t.doSleep()
    t.doWalk()
}