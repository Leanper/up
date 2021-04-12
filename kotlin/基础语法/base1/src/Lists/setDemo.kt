package Lists

    fun main(args: Array<String>) {


//        setOf<Int>()
//        mutableSetOf<Int>()
//        hashSetOf<Int>()


        set1()
        println("\n------------------------------------------------------------\n")
        set2()
    }
        fun set1(){
                var set=setOf<Int>(1,2,4,3,3,2,2,4)


            print(set)
            print(set.reversed())

        }

    fun set2(){
        var set=mutableSetOf(2,3,4,1,5,"d")
        set.removeIf { it !is Integer }
//        set.add(7)
        var sets=setOf<Int>(1,2,4,3,3,25,2,4)

        set.removeIf {
            it !is Integer
        }
        set.addAll(sets)
        set.forEach {
            print(it)
        }


    }


