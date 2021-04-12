import 'package:flutter/material.dart';

class StackState extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "dd",
      home: new Scaffold(
//        body: StackDemo(),
        body: Work(),
        appBar: AppBar(
          title: Text("App Title"),
        ),
        backgroundColor: Colors.deepPurple,
      ),

    );
  }

  Widget StackDemo(){
   return new Center(
     child: new Container(
       width: 400,
       height: 400,
       color: Colors.deepOrangeAccent,
       child: new Stack(
//         alignment: Alignment(-1, -0.6),
         children: <Widget>[
           Align(

             child: Text("文本"),
             alignment: Alignment(1, -0.3),
           ),
           Positioned(
             right: 100,
             top: 100,
             child: Text("文本2"),
           ),
         ],
       ),

     ),
   );
  }

  Widget Work(){
//    http://a.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9178f04af6fca3d70cf3bc75765.jpg
  return new Container(
    child: new Column(

      children: <Widget>[
        Align(
          alignment: Alignment(0, 0.9),
         child: new Stack(

           children: <Widget>[
             Image.network("http://a.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9178f04af6fca3d70cf3bc75765.jpg",width: 300,height: 200,),
              Text("图片文字"),
           ],
         ),
        ),
        Align(
          alignment: Alignment(0, 0.5),
          child: new Stack(
            children: <Widget>[
              Image.network("http://a.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9178f04af6fca3d70cf3bc75765.jpg",width: 300,height: 200),
              Text("图片文字"),
            ],
//           Image.network("http://a.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9178f04af6fca3d70cf3bc75765.jpg"),
//           Text("图片文字"),
          ),
        ),

      ],
    ),
  );
  }



}