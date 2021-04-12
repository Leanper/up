import 'package:flutter/material.dart';

class ListTilePage extends StatefulWidget {
  @override
  _ListTilePageState createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("ListTilePage"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.add),
          title: Text("标题"),
          subtitle: Text("子标题"),
          enabled: true,

        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text("标题"),
          subtitle: Text("子标题"),
          enabled: true,

        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text("标题"),
          subtitle: Text("子标题"),
          enabled: false,
          trailing: Icon(Icons.camera),

        ),
      ],
    );
  }
}
