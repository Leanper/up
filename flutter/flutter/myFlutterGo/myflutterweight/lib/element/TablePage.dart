import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class TablePage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Table"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  Widget MyBody() {
    List <String> mlist=["1","2","3","4","5"];
    return Table(
      defaultVerticalAlignment:TableCellVerticalAlignment.top,
      children: [
        TableRow(
            children:[
              Text("a"),
              Text("a"),
              Text("a"),
              Text("a"),
            ]
        ),
        TableRow(
            children:[
              Text("a"),
              Text("a谁谁谁水水水水所所所所所"),
              Text("a"),
              Text("a"),
            ]),
      ],
      border: TableBorder.all(color: Colors.red,width: 1),
      columnWidths: {//设置宽度
        0: FixedColumnWidth(100.0),
        1: FixedColumnWidth(40.0),
        2: FixedColumnWidth(100.0),
        3: FixedColumnWidth(40.0),

      },



    );
  }
}
