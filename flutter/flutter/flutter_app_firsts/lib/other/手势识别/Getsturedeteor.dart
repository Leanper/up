import 'package:flutter/material.dart';

class GetsturePage extends StatefulWidget {
  @override
  _GetsturePageState createState() => _GetsturePageState();
}

class _GetsturePageState extends State<GetsturePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("GetsturePageState"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return new GestureDetector(
      child: Text("文本显示"),
      onHorizontalDragDown: (D){
        print(D);
      },
      onTap: (){
        print("ontap");

      },
      onDoubleTap: (){
        print("双击ondoubletap");
      },

    );
  }

}
