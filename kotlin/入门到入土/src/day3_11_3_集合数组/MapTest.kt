package day3_11_3_集合数组

fun main(args: Array<String>) {
    mapTest()
}

fun mapTest(){
    val linkMap: LinkedHashMap<Int, String> = linkedMapOf(1 to "x", 2 to "y", 3 to "z")
    linkMap.forEach { t, u -> print("$t,$u") }

    var map=mutableMapOf <Int,String>(5 to "asda")
    map.put(0,"3")
    map.put(1,"4")
    map.put(2,"3")
    map.put(3,"33s")

    map.forEach { t, u -> print("$t,$u") }
 
    
    map.containsKey(3)
    map.containsKey(3)


}