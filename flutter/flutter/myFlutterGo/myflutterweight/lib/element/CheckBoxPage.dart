import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class CheckBoxPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<CheckBoxPage> {
  bool _value=false;
  bool _value1=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("CheckBox"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {
    //CheckboxListTile
    return Column(
      children: <Widget>[
      Checkbox(
      value: _value,
      tristate: false,
      onChanged: (T){
        setState(() {
          _value=T;
        });
      },
      checkColor: Colors.yellowAccent,
      activeColor: Colors.black,

    ),
        Text("1"),
        CheckboxListTile(value: _value, onChanged: (bool a){
          setState(() {
            _value=a;
          });

        }),

        Text("2"),
        CheckboxListTile(value: _value1, onChanged: (bool a){
          setState(() {
            _value1=a;
          });
        }),

      ],
    );
  }
}
