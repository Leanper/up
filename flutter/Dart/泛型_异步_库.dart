


main(){

  person p=new person();
  p.run();
  print("函数开端");

  double a=0;
  double a2=0;
  double a1=0;
  double a3=0;




  var asyc = getAsyc();
print(asyc);


}

sum(int a,int b){
  return a-b;
}



Future getAsyc()async{

  return 1;


}


class animal{
  int age;
  String name="张三";

  run(){
    print('$name'+"再跑");
  }
}

class person implements animal{
  @override
  int age;

  @override
  String name="李四";

  @override
  run() {
    print('$name'+"再s跑");
    // TODO: implement run
    return null;
  }

}

class a extends animal{
  a(){

  }

  @override
  void set age(int _age) {
    // TODO: implement age
    super.age = _age;
  }
  @override
  run() {
    // TODO: implement run
    return super.run();
  }
 ad asd=new ad(3,"d");




}

class  ad{
  int age;
   var name;

ad(this.age,this.name);

}