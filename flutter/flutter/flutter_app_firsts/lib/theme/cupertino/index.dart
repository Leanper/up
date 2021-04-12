import 'package:flutter/material.dart';
import 'package:flutter_app_firsts/theme/cupertino/Activityindicator.dart';
import 'package:flutter_app_firsts/theme/cupertino/cuperdialog.dart';
class CupertinoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino"),
        backgroundColor: Colors.red,

      ),
      body: MyBody(context),
      backgroundColor: Colors.black12,
    );
  }

  Widget MyBody(BuildContext context){

    return  GridView.count(

      crossAxisCount: 3,
      mainAxisSpacing: 1,
      padding: EdgeInsets.all(1),

      crossAxisSpacing: 1,

      children: <Widget>[
        JumpButton(context,new IndecatorPage(),"Indecator"),
        JumpButton(context,new DialogPage(),"cupertinodialog"),
        JumpButton(context,new IndecatorPage(),"Indecator"),
//        JumpButton(context,new IndecatorPage(),"Indecator"),
//        JumpButton(context,new IndecatorPage(),"Indecator"),
      ],
    );
  }


  Widget JumpButton(context,classes,info){
    return new RaisedButton(onPressed: (){
      Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => classes));
    },
        child: Text(info,style: TextStyle(color: Colors.black),),
      color: Colors.white,
    );
  }
}
