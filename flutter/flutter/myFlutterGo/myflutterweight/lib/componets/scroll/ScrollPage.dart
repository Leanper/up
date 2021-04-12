import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
import 'ScrollViewPage.dart';
import 'Scrollable.dart';
import 'BoxScrollView.dart';
import 'CustomScrollView.dart';
import 'NestedScrollView.dart';
import 'ScrollBarPainter.dart';
import 'ScrollMetrics.dart';
import 'ScrollPhysics.dart';

class ScrollPage extends StatefulWidget {
  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("Scroll"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
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
        JumpButton(context, ScrollViewPage(), "ScrollView", Icon(Icons.list).icon),
        JumpButton(context, ScrollAblewPage(), "Scrollable", Icon(Icons.list).icon),
        JumpButton(context, ScrollPhysics(), "ScrollPhysics", Icon(Icons.menu).icon),
        JumpButton(context, BoxScrollViewPage(), "BoxScrollView", Icon(Icons.format_line_spacing).icon),
        JumpButton(context, CustomScrollViewPage(), "CustomScrollView", Icon(Icons.credit_card).icon),
        JumpButton(context, NestScrollViewPage(), "NestScrollView", Icon(Icons.local_bar).icon),
        JumpButton(context, ScrollBarPainterPage(), "ScrollBarPainter", Icon(Icons.local_bar).icon),
        JumpButton(context, ScrollMetricsPage(), "ScrollMetrics", Icon(Icons.local_bar).icon),
      ],

    );
  }

  //跳转方法
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

          Text(info,style: TextStyle(color: GlobalColorConfig.grey_61cc)),
        ],
      ),
      color: Colors.white,
    );
  }

}
