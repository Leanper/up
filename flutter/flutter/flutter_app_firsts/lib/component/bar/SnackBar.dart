import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),

      ),
      body: MySnack(context),
    );
  }

  Widget MySnack(BuildContext context){

    return Column(
      children: <Widget>[
        GestureDetector(
          child: Text("显示内容"),
          onTap: (){
            final snack=SnackBar(
              content: Text("这个是snack展示内容"),
              backgroundColor: Colors.deepPurple,
              action: SnackBarAction(label: "返回", onPressed: (){

              }),
              duration: Duration(minutes: 1),

            );
            Scaffold.of(context).showSnackBar(snack);

          },
        ),
        GestureDetector(
          onTap: () {
            final snackBar =  SnackBar(
              content:  Text('右侧无SnackBarAction'),
              backgroundColor:Colors.red,
              duration:Duration(minutes: 1),// 持续时间
              //animation,
            );
            Scaffold.of(context).showSnackBar(snackBar);
          },
          child:  Text('显示无SnackBarAction的SnackBar'),
        ),
      ],
    );

  }
}