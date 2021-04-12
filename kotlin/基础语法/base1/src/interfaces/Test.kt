package interfaces


class Test:MyInterface,MyInterface2{
    override var name: String ="T0" //重写属性
    override fun layer() {

    }

    override fun rap() {

    }

    override fun basketball() {
//        super.basketball()
        super<MyInterface>.basketball()
//        super<MyInterface2>.baskerball()
    }


}
 fun main(arg:Array<String>){
        var t=Test()
     t.basketball()
     print(t.name)
 }