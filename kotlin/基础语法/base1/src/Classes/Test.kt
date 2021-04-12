package Classes


     fun  main(arg:Array<String>){
      var bean=TestBean()

         var bean2=TestBean("s","d")

         print("${bean2.name.toString()},${bean2.sex.toString()}")
         println(bean.name)
         println(bean.id)
         println(bean.sex)
         bean.age=5
         println(bean.age)
         bean.age=30
         println(bean.age)

         var bean1=TestBean("aa","d")
         println("${bean1.name.toString()},${bean1.sex.toString()}")
     }

