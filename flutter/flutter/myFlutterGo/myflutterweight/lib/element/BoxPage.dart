import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class BoxPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<BoxPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("box"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {
    return Column(
      children: <Widget>[

    ConstrainedBox(constraints: BoxConstraints(
      minWidth: 50,
      minHeight: 50,
      maxWidth: 150,
      maxHeight: 100,
    ),child: Container(
    width: 50,
    height: 50,
    color: Colors.yellow,
    child: Text("constrainedBox"),
    )),

    Container(
    width: 100,
    height: 100,
    color: Colors.red,
    child:  OverflowBox(
    maxWidth: 100,
    minWidth: 50,
    maxHeight: 180,
    minHeight: 60,
    child: Container(
    width: 70,
    height: 120,
    color: Colors.yellow,
    ),
    ),
    ),


    DecoratedBox(
    position: DecorationPosition.background,//设置是描述子控件的背景还是前景
    decoration: BoxDecoration(
    border: Border.all(
    width: 100,
    color: Colors.greenAccent
    ), boxShadow: [ //阴影
    BoxShadow(
    color:Colors.black54,
    offset: Offset(2.0,2.0),
    blurRadius: 4.0
    ),],
    shape: BoxShape.circle,
    color: Colors.cyan,

    gradient: LinearGradient(
    colors: [Colors.red, Colors.yellowAccent, Colors.lightGreenAccent]),
    ),
    child: Text("dsdsd"),

//            image: Image.asset("assets/images/4.jpg");

    ),


        FittedBox(
          fit: BoxFit.cover,
          //fit 缩放本身占据控件大小 BoxFit.none 没有任何填充效果；
    //BoxFit.fill 充满父容器，不超过父容器
    //BoxFit.fitWidth 宽度充满父容器
    //BoxFit.fitHeight 高度充满父容器
    //BoxFit.contain 内容按宽高比等比填充，不超过父容器
    //BoxFit.cover 内容按原始尺寸充满父容器，可能超过父容器
    //BoxFit.scaleDown缩小范围，内容不会超过容器范围
          child: Container(
            alignment: Alignment.center,

            child: Image.asset("assets/images/8.jpg"),
            color: Colors.cyanAccent,
            width: 100,
            height: 100,
          ),
        )

    ],
    );
  }
}
