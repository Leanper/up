import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
import 'CheckedPopupMenuPage.dart';
import 'DropdownMenuItem.dart';
import 'PopupMenuButtonPage.dart';
import 'PopupMenuDividerPage.dart';
import 'PopupMenuItem.dart';
import 'PopupMenuEntryPage.dart';

class MenuPage extends StatefulWidget {
  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("MenuPage"),
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
        JumpButton(context, PopupMenuItemPage(), "PopupMenuItem", Icon(Icons.list).icon),
        JumpButton(context, CheckedPopupMenuPage(), "CheckedPopupMenu", Icon(Icons.list).icon),
        JumpButton(context, DropdownMenuItemPage(), "DropdownMenuItemPage", Icon(Icons.menu).icon),
        JumpButton(context, PopupMenuButtonPage(), "PopupMenuButtonPage", Icon(Icons.format_line_spacing).icon),
        JumpButton(context, PopupMenuDviderPage(), "PopupMenuDviderPage", Icon(Icons.credit_card).icon),
        JumpButton(context, PopupMenuEntryPage(), "PopupMenuEntryPage", Icon(Icons.local_bar).icon),
//        JumpButton(context, ScrollBarPainterPage(), "ScrollBarPainter", Icon(Icons.local_bar).icon),
//        JumpButton(context, ScrollMetricsPage(), "ScrollMetrics", Icon(Icons.local_bar).icon),
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
