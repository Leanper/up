import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';

class InputPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

            body: MyBody(),
            appBar: AppBar(
              title: Text("input"),
              backgroundColor: GlobalColorConfig.themeColor,
              leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                Navigator.pop(context);
              },),
          ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}





