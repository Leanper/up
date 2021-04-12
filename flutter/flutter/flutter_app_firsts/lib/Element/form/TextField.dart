import 'package:flutter/material.dart';


/*范文示例
* https://blog.csdn.net/yuzhiqiang_1993/article/details/88204031
* */

import 'package:shared_preferences/shared_preferences.dart';

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String values;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(child:
             Column(
            children: <Widget>[
            omponemt(),
            omponemt(),
             getValue(),
        ],
      ),
        ),
        appBar: AppBar(
          title: Text("TextField"),
          backgroundColor: Colors.deepPurple,
        ),
        

      ),
    );
  }

  Widget omponemt(){

    return TextField(
      onChanged: (value){
        print(value);
        values=value;
      },
      onSubmitted: (value){
        print(value);
        values=value;

      },

      decoration: InputDecoration(
        labelText: "sddddd",
        icon:Icon(Icons.people),
        helperText: "helptext",
        errorText: "errortext",
        border: UnderlineInputBorder(
          /*边角*/
            borderRadius: BorderRadius.all(
              Radius.circular(30), //边角为30
            ),
            borderSide: BorderSide(
              color: Colors.amber, //边线颜色为黄色
              width: 2, //边线宽度为2
            ),

        )

      ),

      keyboardType: TextInputType.phone,

      onTap: (){

      },

    );
  }

  Widget getValue(){
    return new RaisedButton(onPressed: (){
      print(values);
    },
      child: Text("获取值"),
    );
  }
}


