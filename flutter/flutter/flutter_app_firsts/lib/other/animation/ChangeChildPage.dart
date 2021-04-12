import 'package:flutter/material.dart';

 class ChangeChildPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text("sdjsd "),
         ),
         body: MyBody(context),
       ),
     );
   }

   Widget MyBody(BuildContext context){
     return Container(
       child: GestureDetector(
         child: new Hero(
           tag: "第二个图片",
           child: Image.asset("assets/images/hh.jpg",width: 100.0,height: 100.0),
         ),
         onTap: (){
           Navigator.pop(context);
         },
       ),
     );
   }
 }
