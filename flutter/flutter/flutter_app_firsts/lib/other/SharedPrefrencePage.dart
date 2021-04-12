import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPrefrencePage extends StatefulWidget {
  @override
  _SharedPrefrencePageState createState() => _SharedPrefrencePageState();
}

class _SharedPrefrencePageState extends State<SharedPrefrencePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("SharedPrefrencePage"),
          backgroundColor: Colors.deepPurple,
        ),
        resizeToAvoidBottomPadding: false,
//        resizeToAvoidBottomInset: true,
      ),
    );
  }
String value="内容";
  String etValue="";
  Widget MyBody() {



    return new SingleChildScrollView(


        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (v){
                setState(() {
                  etValue=v;
                });
              },
            ),
            Text(value),
            Column(
              children: <Widget>[
                RaisedButton(
                  child: Text("增"),
                  onPressed: (){
                    _add();
                  },
                ),
                RaisedButton(
                  child: Text("删"),
                  onPressed: (){
                    _remove();
                  },
                ),
                RaisedButton(
                  child: Text("改"),
                  onPressed: (){
                    _update();
                  },
                ),
                RaisedButton(
                  child: Text("查 "),
                  onPressed: (){
                    _select();
                  },
                ),
                RaisedButton(
                  child: Text("增"),
                  onPressed: (){
                    _add();
                  },
                ),
                RaisedButton(
                  child: Text("删"),
                  onPressed: (){
                    _remove();
                  },
                ),
                RaisedButton(
                  child: Text("改"),
                  onPressed: (){
                    _update();
                  },
                ),
                RaisedButton(
                  child: Text("查 "),
                  onPressed: (){
                    _select();
                  },
                ),
              ],
            ),
          ],
        ),
        );
  }

  _add() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("username", etValue);
    print("存$value");
  }

  _remove() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
     preferences.remove("username");
     print("删除");
  }

  _update ()async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setString("username", etValue);
    print("更新$value");

  }

  _select ()async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    var string = preferences.getString('username');
    if(string!=null){
      print("查$string");
      setState(() {
        value=string;
      });
    }

  }


}
