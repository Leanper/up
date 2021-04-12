import 'package:flutter/material.dart';
import 'Data.dart';
class GridViewState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ss",
      home: new Scaffold(
        body: s(),
//        body: s2(),
        appBar: AppBar(
          title: Text("GridView"),
          backgroundColor: Colors.white,
        ),
      ),
      theme: ThemeData.dark(),

    );
  }

  Widget s(){
   return  GridView.count(

      crossAxisCount: 2,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),

      crossAxisSpacing: 10,

      children: <Widget>[

        Text("11111"),
        Text("11111"),
        Text("11111"),
        Text("11111"),
        Text("11111"),
      ],
    );
  }

  Widget s2(){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
      child: GridView.builder(
        itemCount: ListDatas.length,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context,index){
          return ListTile(
//          title: Text(ListDatas[index]["id"].toString()),
            leading: Image.network(ListDatas[index]["url"]),

          );
        },
      ),
    );
  }
}
