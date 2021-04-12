import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
    child: Text("位置"),
      alignment: Alignment.centerLeft,
      widthFactor: 2.0,
      heightFactor: 2.0,
    );
  }
}
