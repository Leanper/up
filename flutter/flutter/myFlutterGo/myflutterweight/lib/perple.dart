import 'package:flutter/material.dart';
import 'package:myflutterweight/me/PointEventPage.dart';
import 'package:myflutterweight/me/OnTuchEventPage.dart';
import 'package:myflutterweight/me/NotificatonPage.dart';
import 'utils/colorUtils.dart';


class PeopleState extends StatefulWidget {
  @override
  _PeopleStateState createState() => _PeopleStateState();
}

class _PeopleStateState extends State<PeopleState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("VALUE"),
          backgroundColor: GlobalColorConfig.themeColor,
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

        JumpButton(context, PointEventPage(), "事件处理", Icon(Icons.radio).icon),
        JumpButton(context, OnTuchEventPage(), "触摸事件", Icon(Icons.check_box).icon),
        JumpButton(context, NotificatonPage(), "通知", Icon(Icons.check_box).icon),
//        JumpButton(context, ButtonPage(), "Button", Icon(Icons.radio_button_checked).icon),
//        JumpButton(context, CanvasPage(), "Canvas", Icon(Icons.perm_scan_wifi).icon),
//        JumpButton(context, CheckBoxPage(), "CheckBox", Icon(Icons.check_box).icon),
//        JumpButton(context, ExpandedPage(), "Expanded", Icon(Icons.expand_more).icon),
//        JumpButton(context, IconPage(), "Icon", Icon(Icons.insert_emoticon).icon),
//        JumpButton(context, ImagePage(), "Image", Icon(Icons.image).icon),
//        JumpButton(context, InputPage(), "Input", Icon(Icons.input).icon),
//        JumpButton(context, LayoutPage(), "Layout", Icon(Icons.play_circle_outline).icon),
//        JumpButton(context, SliderPage(), "Slider", Icon(Icons.slideshow).icon),
//        JumpButton(context, SpaclingPage(), "Spacling", Icon(Icons.spa).icon),
//        JumpButton(context, StackPage(), "Stack", Icon(Icons.stay_current_portrait).icon),
//        JumpButton(context, SwitchPage(), "Switch", Icon(Icons.switch_camera).icon),
//        JumpButton(context, TablePage(), "Table", Icon(Icons.table_chart).icon),
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
