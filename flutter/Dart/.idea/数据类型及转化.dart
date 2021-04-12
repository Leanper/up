

    main(){
     int a=9;
     int b1=1999000;
     print(b1);
     print(a.isNaN);
   var b=new Bean("李磊",35);
   String json="{"age:"33"}"
   b.fromMap(json);

   print(b.name);



     String str="11";
     String  str1="we are the 不将就";
     print(str1.substring(4));
     print(str+str1);

     var c=int.parse(str);
     
     var map={"a":"b","c":"d"};
     var list={3,5,7,"d"};

      map.forEach((k,v){
        print("$k--$v");
      });


    }


    class Bean{
      int age;
      String name;
      Bean(this.name,this.age);

      Bean.fromMap(Map json){
        json['name']=name;
        json['age']=age;
      }



    }