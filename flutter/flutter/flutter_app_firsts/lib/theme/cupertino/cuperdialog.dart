import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DialogPage extends StatelessWidget {
  bool isShow=true;
  bool showing=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dailog"),
        backgroundColor: Colors.green,
      ),
      body: Button(context),
    );
  }

  Widget Button(BuildContext context) {
    return RaisedButton(onPressed: () {
      print("展示dialog");
//       MyBody();
      MyBody(context,true);
//      showMyDialog(context);
    },
      child: Text("dd"),
    );
  }

  void showMyDialog(BuildContext context) {
    showing=true;
    showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(

            content: const Text(
              'Message',
            ),
            actions: <Widget>[
              FlatButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                  showing = false;
                },
              ),
            ],


          );
        }
        );
  }

  void MyBody(BuildContext context,bool show) {
    isShow=true;
    showDialog<bool>(
        context: context,
        barrierDismissible: isShow,
        builder: (context) {
          return Center(
            child: CupertinoAlertDialog(
              title: Text("title00"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text("诶"),
                    Text("诶232"),
                  ],
                ),
              ),
              actions: <Widget>[
                CupertinoActionSheetAction(
                  child: Text("确定"),
                  onPressed: () {
                    Navigator.of(context).pop(true);

                    isShow=false;

                  },
                ),
                CupertinoActionSheetAction(
                  child: Text("取消"),
                  onPressed: () {

                  },
                ),
              ],
            ),
          );
        }
    );
  }


  void showMyMaterialDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return new AlertDialog(
            title: new Text("title"),
            content: new Text("内容内容内容内容内容内容内容内容内容内容内容"),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("确认"),
              ),
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("取消"),
              ),
            ],
          );
        });
  }

}



