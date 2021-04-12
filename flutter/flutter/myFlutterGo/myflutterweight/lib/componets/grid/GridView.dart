import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';


class GridViewPage extends StatefulWidget {
  @override
  _GridPageState createState() => _GridPageState();
}

class _GridPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("GridViewPage"),
          backgroundColor: GlobalColorConfig.themeColor,
        ),
      ),
    );
  }

  Widget MyBody(BuildContext context){
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
//        JumpButton(context, ListViewPage(), "ListView", Icon(Icons.list).icon),
//        JumpButton(context, ListBodyPage(), "ListBody", Icon(Icons.menu).icon),
//        JumpButton(context, AnimatedListPage(), "AnimatedList", Icon(Icons.format_line_spacing).icon),
//        JumpButton(context, CardPage(), "Card", Icon(Icons.credit_card).icon),
//        JumpButton(context, BarPage(), "Bar", Icon(Icons.local_bar).icon),
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
