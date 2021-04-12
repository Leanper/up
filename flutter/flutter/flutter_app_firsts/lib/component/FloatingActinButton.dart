import 'package:flutter/material.dart';

class FloatActionButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text("floatingactonbutton"),

        ),
        body: mybody(),
      ),
    );
  }

  Widget mybody(){
    return Stack(
      children: <Widget>[
        Align(
            alignment: Alignment(0.8, 0.9),

          child:FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
              foregroundColor: Colors.deepPurple,
              onPressed: (){

              },
            )
        )

      ],
    );
  }
}
