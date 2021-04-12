import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class AlignPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}



class _RadioPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
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

  Widget MyBody() {
    return Column(
      children: <Widget>[
        Align(
          heightFactor: 1,
          widthFactor: 1,

          alignment: Alignment.center,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            child: Text("center"),
            alignment: Alignment.center,
          ),
        ),
        
        Container(
          width: 100,
          color: Colors.green,
          height: 100,
          alignment: Alignment.bottomRight,
          child: Text("bottomright"),
        ),



      ],
    );
  }
}
