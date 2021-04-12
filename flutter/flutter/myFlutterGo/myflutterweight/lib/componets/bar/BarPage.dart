import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';

import 'AppBarPage.dart';
import 'BottomAppBarPage.dart';
import 'BUttonBarPage.dart';
import 'FlexbleSpaceBarPage.dart';
import 'ScrollbarPainterPage.dart';
import 'SliverAppBarPage.dart';
import 'SnackBarActionPage.dart';
import 'TabBarPage.dart';
import 'SnackBarPage.dart';

class BarPage extends StatefulWidget {
  @override
  _BarPageState createState() => _BarPageState();

}

class _BarPageState extends State<BarPage> {
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("Bar"),
          backgroundColor: Colors.deepPurple,
          leading: new IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
             Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody(BuildContext context){
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        JumpButton(context, AppBarPage(), "AppBar", Icon(Icons.local_bar).icon),
        JumpButton(context, BottomAppBarPage(), "BottomAppBar", Icon(Icons.local_bar).icon),
        JumpButton(context, BUttomBarPage(), "ButtomBar", Icon(Icons.local_bar).icon),
        JumpButton(context, FlexbleSpaceBarPage(), "FlexbleSpaceBar", Icon(Icons.local_bar).icon),
        JumpButton(context, ScrollbarPainterPage(), "ScrollbarPainter", Icon(Icons.local_bar).icon),
        JumpButton(context, SliverAppBarPage(), "SliverAppBar", Icon(Icons.local_bar).icon),
        JumpButton(context, SnackBarActionPage(), "SnackBarAction", Icon(Icons.local_bar).icon),
        JumpButton(context, TabBarPage(), "TabBar", Icon(Icons.local_bar).icon),
        JumpButton(context, SnackBarPage(), "SnackBar", Icon(Icons.local_bar).icon),
      ],

    );
  }

  //跳转方法
  Widget
  JumpButton(context,classes,info,icon){
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

          Text(info,style: TextStyle(color: GlobalColorConfig.grey_61cc)),
        ],
      ),
      color: Colors.white,
    );
  }

}
