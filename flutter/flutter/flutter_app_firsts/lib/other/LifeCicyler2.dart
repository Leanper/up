import 'package:flutter/material.dart';


class MyPage1 extends StatefulWidget {
  @override
  _MyPage1State createState() => _MyPage1State();


}

class _MyPage1State extends State<MyPage1> {
  @override
  Widget build(BuildContext context) {
    print("第二个界面build diaoyong====");
    return MaterialApp(
    
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("第二个界面"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }



  Widget MyBody(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        Navigator.pop(context);
      },
      child: Text("跳转"),
    );
  }

   @override
  void initState() {
    super.initState();
    print("第二个界面初始化initState===");
  }

   @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("第二个界面第二个被提到用的===");
  }

  @override
  void didUpdateWidget(MyPage1 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("第二个界面热修复调用===");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("第二个界面deactivate===");
    //当 State 被暂时从视图树中移除时，会调用这个函数。
    //
    //页面切换时，也会调用它，因为此时 State 在视图树中的位置发生了变化，需要先暂时移除后添加。
  }


  @override
  void dispose() {
    super.dispose();
   print("第二个界面dispose===");
    //当 State 被永久的从视图树中移除，Framework 会调用该函数。
    //
    //在销毁前触发，我们可以在这里进行最终的资源释放。
    //
    //在调用这个函数之前，总会先调用 deactivate()。
  }

}
