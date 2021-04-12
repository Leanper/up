import 'package:flutter/material.dart';
import 'package:flutter_app_firsts/component/ListView.dart';
import 'package:flutter_app_firsts/component/GridView.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_app_firsts/component/Cards.dart';
import 'package:flutter_app_firsts/Element/form/TextField.dart';
import 'package:flutter_app_firsts/Element/form/text.dart';
import 'package:flutter_app_firsts/Element/form/Image.dart';
import 'package:flutter_app_firsts/component/TabbarPage.dart';
import '../layout/DrawerLayoutPage.dart';
import '../component/FloatingActinButton.dart';
import '../Element/Media/Icon.dart';
import '../component/bar/SnackBar.dart';
import '../theme/cupertino/index.dart';
import '../theme/Material/index.dart';
import '../component/Chip/index.dart';
import '../component/Chip/chip.dart';
import '../component/Dialog.dart';
import '../layout/index.dart';
import '../layout/placeholderPage.dart';
import '../weight/slidePage.dart';
import '../weight/DatePickPage.dart';
import '../weight/ExpansionPanel.dart';
import '../weight/DataTablePage.dart';
import '../weight/LinearProgressIndicatorPage.dart';
import '../weight/StepperPage.dart';

import '../weight/ListTile.dart';
import '../weight/Divider.dart';
import '../weight/Sliver.dart';


class MyWeightPage extends StatefulWidget {
  @override
  _MyWeightPageState createState() => _MyWeightPageState();
}

class _MyWeightPageState extends State<MyWeightPage> {

  Choice _selectedChoice = choices[0]; // The app's "state".
  File imageFile;
  void _select(Choice choice) {
    setState(() { // Causes the app to rebuild with the new _selectedChoice.
      _selectedChoice = choice;
    });
  }
  @override
  Widget build(BuildContext context) {
    double withs=MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(

        body: MyBody(context),
        appBar: AppBar(
          title: Text("组件"),
          backgroundColor: Colors.deepPurple,
          actions: <Widget>[
            new IconButton( // action button
              icon: new Icon(choices[0].icon),
              onPressed: () {

                showBottomSheet(context: context, builder: (BuildContext context){
                    return new Container(

                        width: withs,
                      height: 300.0,
                      color: Colors.deepPurple,
                      child: Column(
                        children: <Widget>[
                          Text("ss"),
                          Text("ss"),
                          Text("ss"),
                          Text("ss"),
                          Text("ss"),
                          Text("ss"),
                        ],
                      ),
                    );
                });
              },
            ),
            new IconButton( // action button
              icon: new Icon(choices[1].icon),
              onPressed: () {
               showModalBottomSheet(context: context, builder: (BuildContext context){

                 return new Column(
                   mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
                     new ListTile(
                       leading: new Icon(Icons.photo_camera),
                       title: new Text("Camera"),
                       onTap: () async {
                         imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
                         Navigator.pop(context);
                       },
                     ),
                     new ListTile(
                       leading: new Icon(Icons.photo_library),
                       title: new Text("Gallery"),
                       onTap: () async {
                         imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
                         Navigator.pop(context);
                       },
                     ),
                   ],
                 );
               });
              },
            ),
            new PopupMenuButton<Choice>( // overflow menu
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choices.skip(0).map((Choice choice) {
                  return new PopupMenuItem<Choice>(
                    value: choice,
                    child: new Text(choice.title),
                  );
                }).toList();
              },
            ),

       
          ],
            
          leading: Text("leading"),
          

        ),
        bottomNavigationBar: Icon(Icons.add),
        
        
        
      ),
    );
  }

  Widget MyBody(BuildContext context){
    return SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          MyWeightPageBody(context),
          splitLine("theme"),
          ThemeDemo()
        ],
      ),

    );
  }



  Widget MyWeightPageBody(BuildContext context) {
    return new Wrap(
      runSpacing: 10,
      spacing: 10,
//      delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
      children: <Widget>[
        Tooltip(message: "删除",
          child: Text("长按提示"),

      ),

        JumpButton(context,textState(),"文本"),
        JumpButton(context,ImageState(),"图片"),
        JumpButton(context,ListViewState(),"listview"),
        JumpButton(context,GridViewState(),"gridview"),

        JumpButton(context,CardState(),"CardState"),
        JumpButton(context,TextFieldDemo(),"TextField"),
        JumpButton(context,TabbarPage(),"Tabbar"),
        JumpButton(context,DrawerPage(),"DrawerPage"),
        JumpButton(context,FloatActionButtonPage(),"FloatActionButtonPage"),
        JumpButton(context,IconPage(),"IconPage"),
        JumpButton(context,SnackBarPage(),"SnackBarPage"),
        JumpButton(context,ChipPage(),"ChipPage"),
        JumpButton(context,DialogPage(),"DialogPage"),
        JumpButton(context,LayoutIndexPage(),"layout"),
        JumpButton(context,PlaceHolderPage(),"PlaceHolder"),
        JumpButton(context,SlidePage(),"Slide"),
        JumpButton(context,DatePickPage(),"DatePick"),
        JumpButton(context,ExpansionPanelPage(),"ExpansionPanel"),
        JumpButton(context,DataTablePage(),"DataTable"),
        JumpButton(context,LinearProgressIndicatorPage(),"LinearProgressIndicator"),

        JumpButton(context,StepperPage(),"StepperPage"),
        JumpButton(context,DividerPage(),"DividerPage"),
        JumpButton(context,ListTilePage(),"ListTilePage"),
        JumpButton(context,SliverPage(),"SliverPage"),

      ],
    );
  }

  Widget JumpButton(context,classes,info){
    return new RaisedButton(onPressed: (){
      Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => classes));
    },
      child: Text(info,style: TextStyle(color: Colors.black),),
      color: Colors.indigo,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 5.0,
    );
  }


  Widget  ThemeDemo(){
    return Wrap(
      children: <Widget>[

        Row(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new MaterialPage("我是一个标题")));
              },
              child: Column(
                children: <Widget>[
                  Icon(Icons.android,size: 32,color: Colors.red,),
                  Text("Material"),
                ],
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new CupertinoPage()));
              },
              child: Column(
                children: <Widget>[
                  Icon(Icons.phone_iphone,size: 32,color: Colors.red,),
                  Text("Cupertino"),
                ],
              ),
            ),
          ],
        ),

      ],
    );
  }



  Widget splitLine(title){

    return Padding(
      padding: EdgeInsets.all(10),

      child: Text(title,style: TextStyle(
        color: Colors.black12,

      ),),
    );

  }





}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;
  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  getSize(BoxConstraints constraints){
    //指定Flow的大小
    return Size(double.infinity,200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}

class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;
}

 List<Choice> choices = const <Choice>[
        const Choice(title: 'Car', icon: Icons.directions_car),
        const Choice(title: 'Bicycle', icon: Icons.camera),
        const Choice(title: 'Boat', icon: Icons.directions_boat),
        const Choice(title: 'Bus', icon: Icons.directions_bus),
        const Choice(title: 'Train', icon: Icons.directions_railway),
        const Choice(title: 'Walk', icon: Icons.directions_walk),
];
