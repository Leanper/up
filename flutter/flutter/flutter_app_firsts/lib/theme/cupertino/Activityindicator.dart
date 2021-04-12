import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndecatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("indecator展示"),
      ),
      body: MyBody(),
    );
  }

  Widget MyBody(){
    return CupertinoActivityIndicator(
      radius: 60.0,

    );
  }
}
