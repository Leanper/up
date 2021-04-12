import 'package:flutter/material.dart';
import 'utils/colorUtils.dart';
class DesignPage extends StatefulWidget {
  @override
  _DesignPageState createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("Design"),
          backgroundColor: GlobalColorConfig.themeColor,
        ),
      ),
    );
  }

  Widget MyBody(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,

        children: <Widget>[
//          JumpButton(context, RadioPage(), "radio", Icon(Icons.radio).icon),

        ]
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
