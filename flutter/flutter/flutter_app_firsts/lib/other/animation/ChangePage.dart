import 'package:flutter/material.dart';
import 'package:flutter_app_firsts/other/animation/ChangeChildPage.dart';

 class ChangePage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text("转场动画"),
         ),
         body: MyBody(context),
       ),
       
     );
     
   }

   Widget MyBody(BuildContext context){
     return GestureDetector(
       child: new Hero(tag: "第一个图片", child:Image.network("http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg",width: 100.0,height: 100.0)),
       onTap: (){
      Navigator.push(context, new MaterialPageRoute(builder: (_){
          return ChangeChildPage();
      }));
       },
     );
   }
 }
