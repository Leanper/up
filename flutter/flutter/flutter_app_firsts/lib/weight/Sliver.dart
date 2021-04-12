import 'package:flutter/material.dart';

class SliverPage extends StatefulWidget {
  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  List<Widget> list=[Text('sdsd'),Text('sdsd'),Text('sdsd'),Text('sdsd'),Text('sdsd'),Text('sdsd'),Text('sdsd'),Text('sdsd'),Text('sdsd'),Text('sdsd'),Text('sdsd')];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Sliver"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          centerTitle: false,
          actions: <Widget>[
            Text("action"),
          ],
          title: Text("title"),
          expandedHeight: 200,
          leading: Icon(Icons.arrow_back_ios),
          pinned: true,

          flexibleSpace: FlexibleSpaceBar(

            background: Image.network(
              "http://pic37.nipic.com/20140113/8800276_184927469000_2.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(list),
            itemExtent: 120.0),
        
      ],
    );
  }
}
