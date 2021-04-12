import 'package:flutter/material.dart';

 class DrawerPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: new Scaffold(
         appBar: AppBar(
           title: Text("Drawer"),
           backgroundColor: Colors.deepPurple,
         ),
         body: drawers(),
       ),
     );
   }

   Widget drawers(){
     return new Drawer(
       elevation: 20,
       child: ListView(
         children: <Widget>[
           UserAccountsDrawerHeader(
             accountName: Text("名字"),
             currentAccountPicture:Image.asset("hh.jpg"),
             accountEmail: Text("1234678@163.com"),
           ),

           ListTile(
             title: Text("第一"),
             leading: Icon(Icons.settings),
           ),
           ListTile(
             title: Text("第二"),
             leading: Icon(Icons.add),
           ),
           ListTile(
             title: Text("第三"),
             leading: Icon(Icons.email),
           ),
         ],
       ),
     );
   }
 }
