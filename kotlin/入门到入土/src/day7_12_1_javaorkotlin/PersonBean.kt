package day7_12_1_javaorkotlin

class StudentBean{
    var age:Int=1
    var name:String="张三"
    var sex:String="男"
    var score:Int=90

}

 fun StudentBean.setScoreAuto(score:Int){
     var s=StudentBean()
     s.score=score
 }