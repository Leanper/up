import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("container"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xffca2121),
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column(

      children: <Widget>[

        Container(
          padding: EdgeInsets.only(right: 10,top: 10),
          margin: EdgeInsets.all(20),
          color: Colors.green,
          alignment: Alignment(1,-1),
          width: double.infinity,

          height: 50,
          child: Text("消愁"),
        ),Container(
          color: Colors.yellowAccent,
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Text("明月"),
        ),Container(
          color: Colors.yellowAccent,

          height: 100,

          child: Text("明月\n几时有\n把酒问青天\n不知天上宫阙"),
          constraints: BoxConstraints(
            maxHeight: 200,
            maxWidth: 100,
            minHeight: 20,
            minWidth: 10
          ),
        ),
        Center(
          widthFactor: 2,
          heightFactor: 3,

          child: Text("center"),
        )
      ],
    );

  }
}
