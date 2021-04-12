import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("CardPage"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {
    return Card(

      color: GlobalColorConfig.themeColor,
      clipBehavior: Clip.antiAlias,//抗锯齿
      margin: EdgeInsets.all(20),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
      elevation: 20,
      child: Info(),

    );
  }

  Widget Info(){
    return Container(
      child:
          Text("Card"),




    );
  }
}
