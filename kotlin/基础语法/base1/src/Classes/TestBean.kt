package Classes

class TestBean{
    var id:String?="1"
    var name:String?="张三"
        set(value) {field=value}
        get() {
            return field

        }
    var sex:String?="男"


    var age:Int=20

        set(value) {
            if(value>10){
                field=value
            }else{
                field=2
            }
        }



    //初始化操作
    init {
        this.name="李四"
        this.sex = "女"
    }
    //构造器
    constructor(varname:String,varsex: String){
        this.name=varname
        this.sex=varsex
    }
    //无参构造器
    constructor()


}