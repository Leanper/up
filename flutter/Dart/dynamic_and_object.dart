
main (){
  dynamic name="张三";
  dynamic names="张三";

    print(name);

    List mylist=[1,2,4,5,6,44];
    mylist.forEach((f){
      print(f);
    });

    int i=3;
    switch(i){
      case 1:
      print("1");
        break;
    }

    print(Test?.f());
    print(Test?.a());
//    setfunction("李磊",5);

}

class Test{
   static f(){
    print("f");
  }

  static a(){

  }


}
