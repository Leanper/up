import 'package:flutter/material.dart';
import 'package:flutter_app_firsts/other/手势识别/Getsturedeteor.dart';
import '../other/LifeCicyler.dart';
import '../other/animation/index.dart';
import '../other/see/index.dart';
import '../other/SharedPrefrencePage.dart';
import 'package:flutter_app_firsts/http/httpDemo.dart';
import '../weight/scroll/Custom.dart';
import '../other/手势识别/index.dart';

class LikePage extends StatelessWidget {
  DateTime lastTime;
  @override
  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text("乱七八糟"),
//        ),
//        body:myBody(context),
//      ),
//    );
//  }
    return WillPopScope(child: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("乱七八糟"),
        ),
        body: myBody(context),
      ),

    ), onWillPop: ()async{
      if(lastTime==null||DateTime.now().difference(lastTime)>Duration(seconds: 1)){
        lastTime=DateTime.now();
//        Fluttertoast.showToast(msg: "再按一次退出程序");
        return false;
      }
      return true;
    });
  }
  Widget myBody(BuildContext context){
    return new GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      padding: EdgeInsets.all(1),

      crossAxisSpacing: 1,

      children: <Widget>[
        JumpButton(context, indexPageGesture(), "Getsture", Icons.drag_handle),
        JumpButton(context, MyPage1(), "生命周期", Icons.lightbulb_outline),
        JumpButton(context, AnimationPage(), "动画", Icons.style),
        JumpButton(context, indexPage(), "绘制视觉", Icons.looks),
        JumpButton(context, HttpDemo(), "网络请求", Icons.money_off),
        JumpButton(context, SharedPrefrencePage(), "shared", Icons.memory),
        JumpButton(context, Customer(), "CustomerScrollview", Icons.memory),


      ],


    );
  }

  Widget JumpButton(context,classes,info,icon){
    return new RaisedButton(onPressed: (){
      Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => classes));
    },
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon,color: Colors.red),
          Text(info,style: TextStyle(color: Colors.red))
        ],
      ),
      color: Colors.white,
    );
  }
}
