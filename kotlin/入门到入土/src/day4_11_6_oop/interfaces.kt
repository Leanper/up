package day4_11_6_oop





interface getData{
    public var age:Int
    public var name:String

    fun useData(){
        println("$name 年纪为 $age")
    }
    open fun show(){
        println("$name 在展示")
    }
}

interface getUi{
    var name:String
    var type:String

     fun show(){
        println("$name 展示的样式为$type")
    }

    fun usetype(){
        println("$name 使用的样式为 $type")
    }
}

    class test() :getData,getUi{
        override var type: String
            get() = "默认类型"
            set(value) {}
        override var age: Int
            get() = 3
            set(value) {}
        override var name: String
            get() = "test名字"
            set(value) {}


        override fun useData() {
        super.useData()
        this.age=6
        this.name="李四"
    }

    override fun show() {
        //指定那个接口的show方法
        super<getData>.show()
        super<getUi>.show()
        this.name="ss"
    }

    override fun usetype() {
        super.usetype()
     }






}

fun main(args: Array<String>) {
    var t=test()
    t.useData()
    t.show()
    t.usetype()


}

