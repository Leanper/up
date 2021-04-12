import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class textState extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TestDemo();
  }



}


class TestDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Text展示",


      home: new Scaffold(
        appBar: AppBar(
          title: Text("Text展示"),
          backgroundColor: Colors.cyanAccent,
        ),
        body: new Column(
          children: <Widget>[
            Text1(),
            Text2(),

          ],
        ),

      ),

    );

  }
  Widget Text1(){
    return new Text("文本展示",style:TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,

    ));

  }
  Widget Text2(){
    return new Text("我与春风皆过客 你携秋水入星河 just do it",
      textAlign: TextAlign.center, //文本对齐方式  居中
      textDirection: TextDirection.ltr, //文本方向
      softWrap: false, //是否自动换行 false文字不考虑容器大小  单行显示   超出；屏幕部分将默认截断处理
      overflow: TextOverflow
          .ellipsis, //文字超出屏幕之后的处理方式  TextOverflow.clip剪裁   TextOverflow.fade 渐隐  TextOverflow.ellipsis省略号
      textScaleFactor: 2.0, //字体显示的赔率
      maxLines: 10, //最大行数
      style: new TextStyle(
        decorationColor: const Color(0x000fff), //线的颜色
        decoration: TextDecoration
            .none, //none无文字装饰   lineThrough删除线   overline文字上面显示线    underline文字下面显示线
        decorationStyle: TextDecorationStyle
            .solid, //文字装饰的风格  dashed,dotted虚线(简短间隔大小区分)  double三条线  solid两条线
        wordSpacing: 0, //单词间隙(负值可以让单词更紧凑)
        letterSpacing: 0, //字母间隙(负值可以让字母更紧凑)
        fontStyle: FontStyle.italic, //文字样式，斜体和正常
        fontSize: 22.0, //字体大小
        fontWeight: FontWeight.w900, //字体粗细  粗体和正常
//        color: const Color(0x00ff00), //文字颜色
      color: Colors.blue
      ),
    );

  }



}

