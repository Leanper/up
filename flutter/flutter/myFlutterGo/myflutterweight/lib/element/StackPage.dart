import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class StackPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<StackPage> {
  void _indexAdd() {
    setState(() {
      if (currIndex > 4)
        currIndex = 0;
      else
        currIndex++;
    });
  }
  int currIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Stack"),
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



//      overflow :指子Widget 超出Stack时候如何显示，默认值是Overflow.clip，子Widget超出Stack会被截断，
//    Overflow.visible超出部分还会显示的

    children: <Widget>[
      Stack(
        fit: StackFit.loose,//fit :用来决定没有Positioned方式时候子Widget的大小，StackFit.loose 指的是子Widget 多大就多大，StackFit.expand使子Widget的大小和父组件一样大
        overflow: Overflow.clip,//
        children: <Widget>[
          Container(
            alignment: Alignment.center,//alignment : 指的是子Widget的对其方式，默认情况是以左上角为开始点 ，这个属性是最难理解的，它区分为使用了Positioned和未使用Positioned定义两种情况，没有使用Positioned情况还是比较好理解的，下面会详细讲解的
            padding: EdgeInsets.only(left: 10,top: 20),
            margin: EdgeInsets.only(left: 10,top: 20),
            width: 200,

            height: 200,
            color: Colors.amber,
            child: Text("sss"),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Text("sss"),
          ),
        ],

      ),
      IndexedStack(
        index: currIndex,
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            size: 40,
            color: Colors.red,
          ),
          Icon(
            Icons.arrow_back,
            size: 50,
            color: Colors.yellow,
          ),Icon(
            Icons.access_alarm,
            size: 60,
            color: Colors.green,
          ),
          Text("text")
        ],
      ),

      IconButton(icon: Icon(Icons.motorcycle), onPressed: (){
        _indexAdd();
      }),
      ],
    );
  }
}
