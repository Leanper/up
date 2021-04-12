

main(){
  nums();
//  stringdemo();
//  ListDemo();
  MapDemo();
//  DataType();
//  yun();
//print(getInts(4, 5));
}
//https://mp.weixin.qq.com/s/ScDVp3Teel8Wo-DO3ki_0A  address
nums(){
  num a=230;
   const n=0;
   final m="";

  print(a);
  a=33.3;
  int b=3;
  double c=4.443493;
  print(c.toInt());
  print(a);
}


 stringdemo(){
   String  a='''
  dsdd
  sd
  sd
  s 
  aaa''';
   print(a);
   var str1="hello";
   var str;
   str??=30;
   print(str);
   var str2="dart is mobile ui";
   var substring = str2.substring(str2.indexOf("r"),str2.indexOf("e"));
   print(substring);
   var contains = str2.contains("e");
   String s="ss";
   print(contains);
   //todo:待完成的

   ///导出文档


   print(str2.split("r"));

   print('$str1$str2');
   print(str1+str2);
 }

 ListDemo(){
  //第一重定义方式
  var lists=[1,4,6,7,98,5];

  var list=new List();

  print(lists);
  print(lists.length);
  print(lists.removeAt(2));
  lists.add(90);
  print(lists);


  //第二种定义方式
   var list2=new List();
   for(var i=0;i<10;i++){
     list2.add(i);
   }
   print(list2);
   var indexOf = list2.indexOf(9);
   print(indexOf);
   list2.fillRange(3, 4,[66]);
 }

 MapDemo(){
  var dog={
    "name":"柯基",
    "age":2,
    "like":["eat","sleep"]
  };
  print(dog.keys.toList());


  print(dog);
  print(dog['name']);
  print(dog['like']);

   var mymap=new Map();
   mymap["name"]="二哈";
   mymap["age"]=2;
   mymap["like"]=["eat","sleep"];
   mymap["top"]="ss";
   mymap.forEach((e,v){

   });

   print(mymap);
   Map companys={"1":"三会丢失","2":"收到就好"};
   var containsKey = companys.containsKey("1");
   var containsValue = companys.containsValue("是");
  print("$containsValue$containsKey");

  var hawaiianBeaches = {
    'oahu' : ['waikiki', 'kailua', 'waimanalo'],
    'big island' : ['wailea bay', 'pololu beach'],
    'kauai' : ['hanalei', 'poipu']
  };

 }
  int getInts(int a,int  b){

  return a+b;
  }

 DataType(){
  var str="eds";
  if(str is int){
    print("是int");
  }else if(str is String){
    print("是String");
  }
 }

 yun(){
 int a=17;
 int b=4;
 print(a+b);
 print(a-b);
 print(a*b);
 print(a/b);
 print(a%b);//取余
 print(a~/b);//取整

 print("刘海砍樵");

   int c;
   c??=10;//c 不为空输出c 为空则输出10
   print(c);
   Point p=new Point();
    p.a=3;
    print(p.b);


 }

 class Point{
  int a;
  String b;

 }
