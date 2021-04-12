import 'package:flutter/material.dart';

class Row2Column extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "得到",
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Row2Column"),
          backgroundColor: Colors.lightBlueAccent,
        ),
//        body: Elements(),
//        body: Rows(),
        body: demo(),
      )
    );
  }


}

Widget Rows(){

   new Container(
      width: 400,
      height: 400,
      color: Colors.cyanAccent,
      child: new Padding(
        padding: EdgeInsets.all(10),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconState(Icons.add,color: Colors.indigoAccent),
            IconState(Icons.unarchive,color: Colors.deepPurple),
            IconState(Icons.accessible_forward,color: Colors.deepOrange),
          ],
        ),
      ),
    );

}
class IconState extends StatelessWidget{


  double size=32.0;
  Color color=Colors.lightBlue;
  IconData icon;
  IconState(this.icon,{this.size,this.color});
  @override
  Widget build(BuildContext context) {

    return   Container(
      width: 100,
      height: 100,
      color:color,
      child: Center(
        child: Icon(this.icon,size:this.size,color:Colors.white),
      ),
    );
  }
}

Widget Elements(){
  return Row(
    children: <Widget>[
      Expanded(
        flex: 3,
        child: IconState(Icons.map,color: Colors.red,),
      ),
      Expanded(
        flex: 1,
        child: IconState(Icons.markunread,color: Colors.lightBlueAccent),
      )
    ],
  );
}

Widget demo(){
  return Container(
    padding: EdgeInsets.all(10),
    width: 400,
    height: 200,
    child: Row(

      children: <Widget>[
        Expanded(
          flex: 3,
          child: Image.network("http://c.hiphotos.baidu.com/image/pic/item/f636afc379310a55515bfd76b54543a982261030.jpg",color: Colors.lightBlueAccent,),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(10),

            child: new Column(

              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.network("http://c.hiphotos.baidu.com/image/pic/item/f636afc379310a55515bfd76b54543a982261030.jpg",color: Colors.red,fit: BoxFit.cover,),
                ),SizedBox(width:10),
                Expanded(
                  flex: 1,
                  child: Image.network("http://c.hiphotos.baidu.com/image/pic/item/f636afc379310a55515bfd76b54543a982261030.jpg",color: Colors.indigo,fit: BoxFit.cover,),
                )
              ],
            ),
          )
        )
      ],
    ),

  );
}