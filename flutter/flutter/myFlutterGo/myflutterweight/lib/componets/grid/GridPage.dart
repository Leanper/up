import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
import 'GridPaper.dart';
import 'GridTileBarPage.dart';
import 'GridTitlePage.dart';
import 'GridView.dart';
import 'SliverGridPage.dart';
class GridPage extends StatefulWidget {
  @override
  _GridPageState createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("Grid"),
          backgroundColor: GlobalColorConfig.themeColor,
        ),
      ),
    );
  }

  Widget MyBody(BuildContext context){
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        JumpButton(context, GridPaperPage(), "GridPaper", Icon(Icons.list).icon),
        JumpButton(context, GridTitlePage(), "GridTitle", Icon(Icons.menu).icon),
        JumpButton(context, GridTileBarPage(), "GridTilebar", Icon(Icons.format_line_spacing).icon),
        JumpButton(context, GridViewPage(), "GridView", Icon(Icons.credit_card).icon),
        JumpButton(context, SliverGridPages(), "SliverGridPage", Icon(Icons.local_bar).icon),
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
