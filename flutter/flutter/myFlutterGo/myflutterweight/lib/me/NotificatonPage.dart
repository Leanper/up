import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class NotificatonPage extends StatefulWidget {
  @override
  _NotificatonPageState createState() => _NotificatonPageState();
}

class _NotificatonPageState extends State<NotificatonPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Notification"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }
 String message="";
  onstartScroll(ScrollMetrics metrics){
    setState(() {
      message="onstartScroll";
    });
  }
  onendScroll(ScrollMetrics metrics){
    setState(() {
      message="onendScroll";
    });
  }

  onupdateScroll(ScrollMetrics metrics){
    setState(() {
      message="onupdateScroll";
    });
  }


  Widget MyBody() {
    return Column(

      children: <Widget>[
        Container(
          height: 50.0,
          color: Colors.green,
          child: Text(message),
        ),
        Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification){
                if(scrollNotification is ScrollStartNotification){
                  onstartScroll(scrollNotification.metrics);
                }else if(scrollNotification is ScrollUpdateNotification){
                  onupdateScroll(scrollNotification.metrics);
                }else if(scrollNotification is ScrollEndNotification){
                  onendScroll(scrollNotification.metrics);
                }
              },
              child: ListView.builder(
                itemCount: 30,
                  itemBuilder: (context,index){
                  return ListTile(title: Text("index $index"));
              }),
            )),

      ],
    );
  }
}
