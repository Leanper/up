import 'package:flutter/material.dart';

 class MaterialPage extends StatelessWidget {
   var title;
   MaterialPage(tilte){
     this.title=tilte;
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Material$title"),
         backgroundColor: Colors.red,

       ),
       body: MyBody(),
     );
   }

   Widget MyBody(){
     return Wrap(
      children: <Widget>[
        
      ],
     );
   }
 }
