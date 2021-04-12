import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {

  var groupValue=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Radio"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }


  Change(num){
    this.setState((){
      groupValue=num;
    });
  }

  Widget MyBody() {


    return Column(
      children: <Widget>[
        Radio(value: 1, groupValue: groupValue, onChanged: (T){
          Change(T);
        }),
        Text("1"),
        Radio(value: 2, groupValue: groupValue, onChanged: (T){
          Change(T);
        }),
        Text("2"),
        Radio(value: 3, groupValue: groupValue, onChanged: (T){
          Change(T);
        }),
        Text("3"),

        IconButton(icon: Icon(Icons.ac_unit),onPressed: (){
          print(groupValue);
        },)
      ],
    );
  }
  
//  Widget RadioListTile(){
//    return Column(
//      children: <Widget>[
//        RadioListTile(value: null, groupValue: null, onChanged: null)
//      ],
//    );
//  }
}
