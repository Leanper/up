 import 'package:flutter/material.dart';
import 'package:flutter_app_firsts/other/animation/TweenPage.dart';
import 'package:flutter_app_firsts/other/animation/ChangePage.dart';

  class AnimationPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("动画"),
          ),
          body: MyBody(context),
        ),
      );
    }

    Widget MyBody(BuildContext context){

      return new GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 1,
        padding: EdgeInsets.all(1),

        crossAxisSpacing: 1,

        children: <Widget>[
          JumpButton(context, TweenPage(), "渐变动画", Icons.wb_incandescent),
          JumpButton(context, ChangePage(), "转场动画", Icons.transform),
          JumpButton(context, ChangePage(), "转场动画", Icons.transform),





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
