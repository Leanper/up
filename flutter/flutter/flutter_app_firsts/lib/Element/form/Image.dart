import 'package:flutter/material.dart';
import 'package:flutter_app_firsts/util/style.dart';

 class ImageState extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: ImageStates(),
//        title: Text("图片"),
    );
  }


 }



 class ImageStates extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: new Row(

        children: <Widget>[
//          Expanded(
//            child: Image1(),
//
//          ),
          Images(),
        ],

      ),
    );
  }


 }
Widget Images(){
  return new Image.asset("assets/images/tim1g.jpg",width: 100.0,height: 100.0);
}
Widget Image1(){
  return new Image.network("http://pic37.nipic.com/20140113/8800276_184927469000_2.png",width: 300.0,height: 300.0,alignment: Alignment.center,);
}

