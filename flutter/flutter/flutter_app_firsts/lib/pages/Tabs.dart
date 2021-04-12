import 'package:flutter/material.dart';
import 'package:flutter_app_firsts/pages/Like.dart';
import 'package:flutter_app_firsts/pages/My.dart';
import 'package:flutter_app_firsts/pages/Weights.dart';
class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _myIndexs=0;
  List pageList=[
    MyWeightPage(),
    LikePage(),
    MyPages(),


  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: this.pageList[_myIndexs],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("weight")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text("settings ")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.my_location),

                title: Text("location")
            ),

          ],
          onTap: (index){
            setState(() {
              this._myIndexs=index;

            });
          },
          fixedColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          currentIndex: _myIndexs,


        ),
      ),
    );
  }


}
