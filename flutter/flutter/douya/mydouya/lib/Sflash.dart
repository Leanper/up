
import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();

}

class _SplashPageState extends State<SplashPage> {
  int mDownTime=5;
  Timer timer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget MyBody(BuildContext context) {
    return Column(
      children: <Widget>[
        DownTimer(),
      ],

    );
  }

  @override
  void initState(){
    startCountdownTimer();
  }

  Widget DownTimer(){

    return Container(
        alignment: Alignment.topRight,
        padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
        margin: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blueAccent,
        child: DecoratedBox(decoration: new BoxDecoration(
          color: Colors.red,
          border: Border.all(
              color: Color(0xff0000ff)
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
            position: DecorationPosition.background,
            child: Text("$mDownTime",
              style: TextStyle(
                backgroundColor: Colors.black38,

              ),
            ),
        )
    );
  }

  //开始倒计时
  void startCountdownTimer() {
    const oneSec = const Duration(seconds: 1);

    var callback = (timer) => {
      setState(() {
        if (mDownTime < 1) {
          timer.cancel();
        } else {
          mDownTime = mDownTime - 1;
        }
      })
    };

    timer = Timer.periodic(oneSec, callback);
  }

  @override
  void  dispose(){
    timer.cancel();
  }

}
