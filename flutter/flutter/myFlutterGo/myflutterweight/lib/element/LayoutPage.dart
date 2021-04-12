import 'package:flutter/material.dart';
import 'package:myflutterweight/element/layout/AlignPage.dart';
import 'package:myflutterweight/element/layout/Column.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
import 'package:myflutterweight/element/layout/RowPage.dart';
import 'package:myflutterweight/element/layout/ContainerPage.dart';

class LayoutPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("Align"),
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
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,

      children: <Widget>[
        JumpButton(context, RowPage(), "Row", Icon(Icons.rowing).icon),
        JumpButton(context, ColumnPage(), "column", Icon(Icons.view_column).icon),
        JumpButton(context, ContainerPage(), "container", Icon(Icons.format_line_spacing).icon),
        JumpButton(context, AlignPage(), "Align", Icon(Icons.speaker).icon),
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
          Text(info,style: TextStyle(color: GlobalColorConfig.grey_61cc))
        ],
      ),
      color: Colors.white,
    );
  }

}
