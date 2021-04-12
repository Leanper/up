import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'pages/Tabs.dart';
import 'package:flutter_app_firsts/Element/form/Image.dart';
import 'package:flutter_app_firsts/Element/form/text.dart';
void main(){
  runApp(new MyApp());
    if (Platform.isAndroid) {
  //设置Android头部的导航栏透明
      SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
}




class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.deepPurple,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.red,
          )
      ),
      title: "title",

      routes:{
        'images': (context) => new ImageState(),
        'texts': (context) => new textState(),
      },
      home: MyHomeState(),
      debugShowCheckedModeBanner: false,//去除右上角debug模式

//      debugShowMaterialGrid: true,//展示方格铺满整个界面
      color: Colors.amber,
//      showPerformanceOverlay: true,
//      checkerboardOffscreenLayers: true,
//      checkerboardRasterCacheImages: true,
//
    );
  }

}

class MyHomeState extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: TabsPage(),


    );
  }



}
Widget d(){
  return  SizedBox(
      height: 100,
      child: Scaffold(
        //appBar: AppBar(title: const Text('Bottom App Bar')),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), onPressed: () {},),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10.0,// FloatingActionButton和BottomAppBar 之间的差距
          color:Colors.pink,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.menu), onPressed: () {

              },),
              IconButton(icon: Icon(Icons.search), onPressed: () {},),
            ],
          ),
        ),
      )
  );
}

















//body: new Column(
//
//children: <Widget>[
//
//),