class Test{
  void main(){
    print("展示内容");
  }

}

class TestChild extends Test{
  @override
  void main() {
    // TODO: implement main
    super.main();
  }
  @override
  noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod
    return super.noSuchMethod(invocation);
  }


}

enum Color {RED,BLUE}



main(){
  var test = new Test();
  TestChild().main();





  var  a=10;
  print(a.runtimeType);
  test.main();

}