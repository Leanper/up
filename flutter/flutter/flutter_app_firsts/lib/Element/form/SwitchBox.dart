import 'package:flutter/material.dart';

 class CheckBoxed extends StatefulWidget {
   @override
   _CheckBoxedState createState() => _CheckBoxedState();
 }

 class _CheckBoxedState extends State<CheckBoxed> {
   bool _switchSelected=true; //维护单选开关状态
   bool _checkboxSelected=true;//维护复选框状态
   String _radioSelected="男";
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       color: Colors.red,
       home: new Scaffold(
         body:Check(),
         appBar: AppBar(
           title: Text("CheckBox"),
         ),
       ),
     );

   }

   Widget Check(){
     return Column(
       children: <Widget>[
        Row(

          children: <Widget>[
            Text("开关"),
            Switch(
              value: _switchSelected,
              onChanged: (value){
                setState(() {
                  _switchSelected=value;
                });
              },
            ),
          ],
        ),
         Checkbox(
           value: _checkboxSelected,
           activeColor: Colors.red,
           onChanged: (value){
             setState(() {
               _checkboxSelected=value;
             });
           },
         ),
        RadioDemo(),
         getValue(),
       ],
     );
   }

   Widget RadioDemo(){
     return Radio(value: _radioSelected, groupValue: _radioSelected, onChanged: (value){
       setState(() {
         this._radioSelected = value;  // aaa
       });
     });
   }

   Widget getValue(){
     return new RaisedButton(onPressed: (){
       print("$_checkboxSelected---$_switchSelected---$_radioSelected");
     },
     child: Text("获取值"),
     );
   }
 }
