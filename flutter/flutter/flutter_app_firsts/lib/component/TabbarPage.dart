import 'package:flutter/material.dart';

class TabbarPage extends StatefulWidget {
  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> with SingleTickerProviderStateMixin {


  TabController _tabController;

   var myTabs = <Tab>[];

   @override
   void initState() {
     super.initState();
     myTabs = <Tab>[
       Tab(text: "Tab1",),
       Tab(text: "Tab2",),
       Tab(text: "Tab3",),
       Tab(text: "Tab4",),
       Tab(text: "Tab5",),
       Tab(text: "Tab6",),
       Tab(text: "Tab7",),
       Tab(text: "Tab8",),
       Tab(
         text: "Tab9",
         icon: Icon(Icons.phone),
       ),
     ];

     //initialIndex初始选中第几个
     _tabController =
         TabController(initialIndex: 3, length: myTabs.length, vsync: this);
   }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,//可以和TabBarView使用同一个TabController
          tabs: myTabs,
          isScrollable: true,
          indicatorColor: Color(0xffff0000),
          indicatorWeight: 4,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.only(bottom: 10.0),
          labelPadding: EdgeInsets.only(left: 20),
          labelColor: Color(0xff333333),
          labelStyle: TextStyle(
            fontSize: 15.0,
          ),
          unselectedLabelColor: Color(0xffffffff),
          unselectedLabelStyle: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: myTabs
              .map((Tab tab) =>
              Container(child: Center(child: Text(tab.text),),))
              .toList()),
    );

  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}
