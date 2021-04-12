import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class TweenPage extends StatefulWidget {
  @override
  _TweenPageState createState() => _TweenPageState();
}

class _TweenPageState extends State<TweenPage> with SingleTickerProviderStateMixin{
  bool _visiable=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("补间动画"),
          backgroundColor: Colors.deepPurple,
        ),
        floatingActionButton: new FloatingActionButton(onPressed: (){
          setState(() {
            _visiable=!_visiable;
          });




        },child: Icon(Icons.wb_incandescent,color: Colors.deepPurple,),),
      ),
    );
  }

  Widget MyBody () {
    return Column(
      children: <Widget>[
        PicChange(),
        AnimatedCrossFade(
          alignment: Alignment.center,
          duration: new Duration(
              milliseconds: 1000

          ),
          firstChild: Text("sss"),
          secondChild: Text("aa"),
          crossFadeState: _visiable?CrossFadeState.showFirst:CrossFadeState.showSecond,
          sizeCurve: Curves.easeInCirc,
          firstCurve: Curves.easeOutSine,
          secondCurve: Curves.decelerate,
        ),

        AnimatedOpacity(
          opacity: _visiable?1.0:0.3,
          duration: new Duration(
            milliseconds: 1000,
          ),child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.red,
        ),
        ),
      ],




//    child: AnimatedContainer(
//      curve: Curves.fastOutSlowIn,
//      child: Text("这是个动画"),
//      duration: new Duration(
//        milliseconds: 2000
//      ),
//    ),





    );


  }


  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 3), vsync: this);
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
      ..addListener(() {
        setState(()=>{});
      });
    //启动动画(正向执行)
    controller.forward();

  }
  Widget PicChange(){
      return new Container(
        child: Image.asset('assets/images/hh.jpg'),
        width: animation.value,
        height: animation.value,
      );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }

}




