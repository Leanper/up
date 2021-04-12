import 'package:flutter/material.dart';

enum ConferenceItem{A,B,C,D}

class DialogPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyDialogPage();
  }
}

class MyDialogPage extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text("dialog"),

        ),
        body: MyBody(context),
      ),

    );;
  }

  int value = 0;
  Widget MyBody(BuildContext context){
    return Column(

      children: <Widget>[

        defaultDialog(context),
        showSimpleDialog(context),
        showAboutDialog(context),
        popupMenu(context),
      ],
    );
  }

  Widget showSimpleDialog(BuildContext context){
    return RaisedButton(
      onPressed: (){
        showDialog<Null>(
          context: context,
          builder: (BuildContext context){


                  SimpleDialog(

                    title: Text("展示信息"),
                    children: <Widget>[
                      SimpleDialogOption(
                        onPressed: (){},
                        child: Text("选项二"),
                      ),
                      SimpleDialogOption(
                        onPressed: (){},
                        child: Text("选项一"),
                      )
                    ],
                  );
                }
            );
          },
      child: Text("simpledialog"),
        );
  }

  Widget defaultDialog(BuildContext context){
    return RaisedButton(
      onPressed: (){
        showDialogdefault(context);
      },
      child: Text("defaultdialog"),
    );
  }


  //dialog默认展示
  void showDialogdefault(BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (context){
          return StatefulBuilder(
            builder: (context,state){
              return Dialog(
                child: Container(
                  width: 200,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('我是一个dialog'),
                      RaisedButton(
                        onPressed: () {
                          state(() {
                            value += 1;
                          });
                        },
                        child:  Text("我是一个Dialog, 点我更新value: $value"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child:  Text("取消"),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        }
    );
  }


  Widget showAboutDialog(BuildContext context){
    return RaisedButton(
      onPressed: (){
        aboutDialog(context);
      },
      child: Text("aboutdialog"),
    );
  }
  void aboutDialog(BuildContext context){
    showDialog(
        context: context,
        builder:(_)=>AboutDialog(
            applicationIcon: Icon(Icons.delete),
            applicationName: "文件名字",
            applicationVersion: 'V1.0',
            applicationLegalese: "不知道是个啥",
            children: <Widget>[
              Text('dialog')
            ]
        )
    );
  }

  Widget popupMenu(BuildContext context){
    return RaisedButton(
      onPressed: (){
        showPopupMenu(context);
        print("popupw");
      },
      child: Text("popupMenu"),
    );
  }

  Widget showPopupMenu(BuildContext context){
    return PopupMenuButton(
        onSelected: (value){

        },


        itemBuilder: (context) =><PopupMenuItem<String>>[
          new PopupMenuItem(
              value:"选项一的内容",
              child: new Text("选项一")
          ),
          new PopupMenuItem(
              value: "选项二的内容",
              child: new Text("选项二")
          )
        ]


    );
  }




}