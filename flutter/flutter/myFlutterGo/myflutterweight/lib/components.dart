import 'package:flutter/material.dart';
import 'utils/colorUtils.dart';
import 'componets/ListViewPage.dart';
import 'componets/ListBodyPage.dart';
import 'componets/AnimatedListPage.dart';
import 'componets/CardPage.dart';
import 'componets/bar/BarPage.dart';
import 'componets/grid//GridPage.dart';
import 'componets/TabPage.dart';
import 'componets/scroll/ScrollPage.dart';
import 'componets/menu/MenuPage.dart';
import 'componets/CityPickerPage.dart';
import 'componets/TimePickerPage.dart';
import 'componets/ExpansionPanelList.dart';
import 'componets/LinearProgressindicatorPage.dart';
import 'componets/CircularProgressindicatorPage.dart';
import 'componets/ChipPage.dart';

class ComponentsPage extends StatefulWidget {
  @override
  _ComponentsPageState createState() => _ComponentsPageState();
}

class _ComponentsPageState extends State<ComponentsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("Componets"),
          centerTitle: true,
        ),
      ),
    );
  }

  Widget MyBody(BuildContext context){
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      children: <Widget>[
          JumpButton(context, ListViewPage(), "ListView", Icon(Icons.list).icon),
          JumpButton(context, ListBodyPage(), "ListBody", Icon(Icons.menu).icon),
          JumpButton(context, AnimatedListPage(), "AnimatedList", Icon(Icons.format_line_spacing).icon),
          JumpButton(context, CardPage(), "Card", Icon(Icons.credit_card).icon),
          JumpButton(context, BarPage(), "Bar", Icon(Icons.local_bar).icon),
          JumpButton(context, GridPage(), "Grid", Icon(Icons.local_bar).icon),
          JumpButton(context, TabPages(), "Tab", Icon(Icons.tab).icon),
          JumpButton(context, ScrollPage(), "Scroll", Icon(Icons.list).icon),
          JumpButton(context, MenuPage(), "Scroll", Icon(Icons.menu).icon),
          JumpButton(context, CityPickerPage(), "CityPicker", Icon(Icons.location_city).icon),
          JumpButton(context, TimePickerPage(), "TimePicker", Icon(Icons.timer).icon),
          JumpButton(context, ExpansionPanelListPage(), "ExpansionPanelList", Icon(Icons.timer).icon),
          JumpButton(context, LineProgressIndicatorPage(), "LineProgressIndicator", Icon(Icons.timer).icon),
          JumpButton(context, CircularProgressIndicatorPage(), "CircularProgressIndicator", Icon(Icons.timer).icon),
          JumpButton(context, ChipPage(), "Chip", Icon(Icons.timer).icon),
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
