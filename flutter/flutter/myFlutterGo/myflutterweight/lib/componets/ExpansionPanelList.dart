import 'package:flutter/material.dart';

class ExpansionPanelListPage extends StatefulWidget {
  @override
  _ExpansionPanelListPageState createState() => _ExpansionPanelListPageState();
}

class _ExpansionPanelListPageState extends State<ExpansionPanelListPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("ExpansionPanelList"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
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
