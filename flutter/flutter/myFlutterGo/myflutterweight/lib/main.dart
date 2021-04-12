import 'package:flutter/material.dart';
import 'ElementPage.dart';
import 'perple.dart';
import 'design.dart';
import 'components.dart';
import 'message.dart';
import 'utils/colorUtils.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {



  @override
  _MyAppState createState()=>_MyAppState();
  }
  class _MyAppState extends State<MyApp>{

  int _myIndex=0;
  List myPageList=[
    ComponentsPage(),
    ElementPage(),
    DesignPage(),
    MessagePage(),
    PeopleState(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        body: this.myPageList[_myIndex],

        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.lightBlue,
            type: BottomNavigationBarType.fixed,
            items:[
              BottomNavigationBarItem(
                  icon: Icon(Icons.computer),
                  title: Text("componet")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.select_all),
                  title: Text("Element"),
                activeIcon: Icon(Icons.new_releases), // 2300*3 6900+6900+1840   8740  15000
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.threesixty),
                  title: Text("Design")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_mall),
                  title: Text("动态")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin),
                  title: Text("个人")
              )
            ],
          onTap: (index){
            setState(() {
              this._myIndex=index;
            });
          },
          currentIndex: _myIndex,
        ),
      ),
    );
  }


}

