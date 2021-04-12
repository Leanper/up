import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Icon"),

      ),
      body: new Column(
        children: <Widget>[
          Icon(Icons.favorite),
          Icon(
            IconData(0xe235,fontFamily: 'MaterialIcons',matchTextDirection: true),
            color: Colors.deepPurple,
            size: 40,
          ),
          IconTheme(data: IconThemeData(color: Colors.deepPurple,opacity: 1.0), child: Icon(Icons.favorite)),
      ImageIcon(
        AssetImage('assets/images/hh.jpg'),
        color: Colors.red,
        size: 50.0,
      )


        ],
      ),
    );
  }
}
