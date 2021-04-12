import 'package:flutter/material.dart';
import 'package:flutter_app_firsts/main.dart';
import 'Data.dart';

class ListViewState extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _MyState();
  }
  List list=new List();

}

class _MyState extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData.dark(),

      title: "listview",

      home: new Scaffold(
//       body:  MyHome(),
//       body:  ListDemo(context),
//       body:  ListDemo2(),
//       body:  ListDemo3(),
//       body:  ListDemo4(),
        body:  _MyStates(),

        appBar: AppBar(
          title:Text( "Listview"),
          backgroundColor: Colors.cyan,
        ),
      ),
    );
  }

  Widget MyHome(){
    return ListView(
      padding: EdgeInsets.all(10),

      children: <Widget>[
        Text("文本1"),
        Text("文本2"),
        Text("文本3"),
        Text("文本4"),
        Text("文本5"),
      ],
    );
  }

  Widget ListDemo(BuildContext context){
    return new ListView(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        ListTile(
          title: Text("标题"),
          leading: Image.network("http://photocdn.sohu.com/20150625/Img415612078.jpg",width: 100,height: 100),
          subtitle: Text("二级标题"),
          onTap:(){
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new MyApp()));
          },


        ),
        ListTile(
          title: Text("标题"),
          leading: Image.network("http://photocdn.sohu.com/20150625/Img415612078.jpg",width: 100,height: 100,),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          title: Text("标题"),
          leading: Image.network("http://photocdn.sohu.com/20150625/Img415612078.jpg",width: 100,height: 100,),
          subtitle: Text("二级标题"),
        ),
      ],
    );
  }

  Widget ListDemo2(){
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemExtent: 50,
      itemCount: 20,
      itemBuilder:(BuildContext context,int index){
        return new Text("text $index");
      },
    );
  }

  List<Widget> getData(){
    List<Widget> list=new List();
    for(var i=0;i<10;i++){
      list.add(ListTile(
        title: Text("第$i条数据"),
      ));
    }
    return list;
//  return [
//    ListTile(
//      title: Text("标题"),
//      leading: Image.network("http://photocdn.sohu.com/20150625/Img415612078.jpg",width: 100,height: 100),
//      subtitle: Text("二级标题"),
//    ),
//    ListTile(
//      title: Text("标题"),
//      leading: Image.network("http://photocdn.sohu.com/20150625/Img415612078.jpg",width: 100,height: 100,),
//      subtitle: Text("二级标题"),
//    ),
//    ListTile(
//      title: Text("标题"),
//      leading: Image.network("http://photocdn.sohu.com/20150625/Img415612078.jpg",width: 100,height: 100,),
//      subtitle: Text("二级标题"),
//    ),
//  ];
  }
  Widget ListDemo3(){
    return new ListView(
        children:this.getData()
    );
  }


  List<Widget> getData2(){
    var myList = ListDatas.map((value){
      return ListTile(
        title: Text(value["id"].toString()),
        subtitle: Text(value["name"]),
        leading: Image.network(value["url"],width: 100,height: 100),
      );
    });

    return myList.toList();
  }
  Widget ListDemo4(){
    return new ListView(
        children:this.getData2()
    );
  }



}

class _MyStates extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView.builder(
        itemCount:ListDatas.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(ListDatas[index]["id"].toString()),
            leading: Image.network(ListDatas[index]['url']),
            subtitle: Text(ListDatas[index]["name"].toString()),
          );
        });
  }
}

