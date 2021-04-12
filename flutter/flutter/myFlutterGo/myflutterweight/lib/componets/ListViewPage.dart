import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("ListViewPage"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Image.asset("assets/images/normal_user_icon.png"), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody(BuildContext context){
    return Column(
      children: <Widget>[
//        MyBody1(),
        ListView2(context),
      ],

    );
  }

  Widget MyBody1() {
    return ListView(
      scrollDirection: Axis.vertical,
      addRepaintBoundaries: true,
      shrinkWrap: true,
      itemExtent: 30,//子项的高度
      padding: EdgeInsets.all(10),

      children: <Widget>[

        Image.asset("assets/images/5.jpeg"),
        Image.asset("assets/images/6.jpg"),
        Image.asset("assets/images/7.jpg"),
        Image.asset("assets/images/8.jpg"),
        Image.asset("assets/images/9.jpg"),
      ],
    );
  }
  
  Widget ListView2(BuildContext context) {
    return new ListView.builder(

        itemExtent: 30,
        padding: EdgeInsets.all(10),
        itemBuilder: (context,position){

        return new  Text("$position ss");

        });
  }

  Widget ListView3(BuildContext context) {
    return Text("sd");

  }


  /*一 选择  10分 判断正误

  *
  *
  *
  * */
}
