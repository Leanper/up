package Lists

fun main(args: Array<String>) {
 map1()
    map2()
}
 fun map1(){
     val map = mapOf("key1" to 2 , "key1" to 3 , "key1" to "value1" , "key2" to "value2")
     map.forEach{
             key,value -> println("$key \t $value")
     }

     var mutablemap=mutableMapOf<String, Int>("key1" to 2 , "key1" to 3)
     hashMapOf<String, Int>("key1" to 2 , "key1" to 3)//返回的是java的hashMap，java的hashMap是可读写的
     mutablemap.put("s",3)
     mutablemap.putIfAbsent("e",2)

     mutablemap.forEach{
         key,value->
         print("$key,==$value")
     }

 }
 fun map2(){
     var map=mutableMapOf<String,String>()
     map.put("1","11")
     map.put("2","122")
     map.put("3","1133")
     var key=map.keys
     map.keys.removeIf {
         it.toInt()>2
     }
 print(key)
 }