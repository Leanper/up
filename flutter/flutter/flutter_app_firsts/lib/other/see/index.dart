import 'package:flutter/material.dart';
import 'package:flutter_app_firsts/other/see/opacity.dart';
import 'package:flutter_app_firsts/other/see/TransformPage.dart';


class indexPage extends StatefulWidget {
  @override
  _indexPageState createState() => _indexPageState();
}

class _indexPageState extends State<indexPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("视觉"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return new GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      padding: EdgeInsets.all(1),

      crossAxisSpacing: 1,

      children: <Widget>[
        JumpButton(context, OpactiyPage(), "Opacity", Icons.looks),
        JumpButton(context, TransformPage(), "Transform", Icons.youtube_searched_for),

      ],


    );
  }

  Widget JumpButton(context,classes,info,icon){
    return new RaisedButton(onPressed: (){
      Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => classes));
    },
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon,color: Colors.red),
          Text(info,style: TextStyle(color: Colors.red))
        ],
      ),
      color: Colors.white,
    );
  }

}
