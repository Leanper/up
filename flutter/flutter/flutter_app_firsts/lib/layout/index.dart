import 'package:flutter/material.dart';
import 'package:flutter_app_firsts/layout/Row2Column.dart';
import 'package:flutter_app_firsts/layout/Stack.dart';
import 'package:flutter_app_firsts/Element/form/SwitchBox.dart';
import '../layout/padding.dart';
import '../layout/row.dart';
import '../layout/column.dart';
import '../layout/Container.dart';
import '../layout/center.dart';
import '../layout/Expanded.dart';
import '../layout/Align.dart';
import '../layout/DecoratedBox.dart';


class LayoutIndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: new Scaffold(
         appBar: AppBar(
           title: Text("layout"),

         ),
         body: myBody(context),
       ),
    );
  }

  Widget myBody(BuildContext context){
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      padding: EdgeInsets.all(1),

      crossAxisSpacing: 1,
      children: <Widget>[
        JumpButton(context,Row2Column(),"Row2Column",Icons.calendar_view_day),
        JumpButton(context,StackState(),"StackState",Icons.map),
        JumpButton(context,CheckBoxed(),"CheckBoxed",Icons.check),
        JumpButton(context,PaddingPage(),"PaddingPage",Icons.pan_tool),
        JumpButton(context,RowgPage(),"RowgPage",Icons.rowing),
        JumpButton(context,ColumnPage(),"ColumnPage",Icons.view_column),
        JumpButton(context,ContainerPage(),"Container",Icons.contact_mail),
        JumpButton(context,CenterPage(),"CenterPage",Icons.center_focus_strong),
        JumpButton(context,ExpandedPage(),"Expanded",Icons.explore),
        JumpButton(context,AlignPage(),"Align",Icons.format_align_left),
    JumpButton(context,DecotatedBoxPage(),"DecotatedBox",Icons.format_align_left),


        s(context),
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


  Widget s(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: screenWidth-20,
            margin: const EdgeInsets.only(top: 30.0, bottom: 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: screenWidth-20,
                  padding: const EdgeInsets.only(left: 65.0, top: 3.0),
                  height: 30.0,
                  child: Text(
                    "ss",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 18.0,
                    ),
                  ),
                ),

              ],
            ),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.0),
                  ),
                  height: 46.0,
                  width: 46.0,
                  child: Icon(
                  Icons.print,
                    color: Colors.deepPurple,
                    size: 30.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}
