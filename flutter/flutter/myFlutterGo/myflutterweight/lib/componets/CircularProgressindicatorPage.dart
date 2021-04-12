import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class CircularProgressIndicatorPage extends StatefulWidget {
  @override
  _ExpansionPanelListPageState createState() => _ExpansionPanelListPageState();
}

class _ExpansionPanelListPageState extends State<CircularProgressIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("CircularProgressIndicator"),
          centerTitle: true,
          backgroundColor:GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column();
  }
}
