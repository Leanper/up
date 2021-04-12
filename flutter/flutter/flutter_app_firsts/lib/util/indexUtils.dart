import 'package:flutter/material.dart';


class LayoutIndexPage  extends StatelessWidget {
  String title;
  List<Widget> mylist=new List();
  LayoutIndexPage(List<Widget> mylist,String title){
    this.title=title;
    this.mylist=mylist;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text("$title"),

        ),
        body: myBody(context),
      ),
    );
  }

  Widget myBody(BuildContext context){

    print(mylist.length);


    return SizedBox(
      height: 300,
      width: 300,
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 1,
        padding: EdgeInsets.all(1),

        crossAxisSpacing: 1,
        children: <Widget>[

          test(context),


        ],
      ),
    );
  }

  Widget test(BuildContext context){
//    for(int i=0;i<mylist.length;i++){
      return jumpButton(context,mylist[1],"mylist[i]",Icons.calendar_view_day);
//    }
  }

  Widget jumpButton(context,classes,info,icon){
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
