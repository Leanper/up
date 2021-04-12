import 'package:flutter/material.dart';

class TransformPage extends StatefulWidget {
  @override
  _TransformPageState createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("transform"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column(
      children: <Widget>[
       RaisedButton(onPressed: (){

         setState(() {
           Transform.translate(
             offset: Offset(200,200),
             child: Text("transslate"),
           );
         });
       },
         child: Text("translate"),

       ),
        Transform.scale(
          scale: 0.5,
          origin: Offset(0,0),
          child: ClipOval(
            child: SizedBox(
              width: 100,
              height: 160,
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
        
        Transform.rotate(
            angle: 180,
          child: Text("rotate"),
        ),
    ],
    );
  }

 Widget m1yBody(){

 }
}
