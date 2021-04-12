import 'package:flutter/material.dart';

class DataTablePage extends StatefulWidget {
  @override
  _DataTablePageState createState() => _DataTablePageState();
}


class _DataTablePageState extends State<DataTablePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("DATATABLE"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }


  Widget MyBody() {


    return  DataTable(
      columns: <DataColumn>[
    new DataColumn(label: new GestureDetector(
    onTap: () {
    print('column 1 tap');
    },
    child: Text('column 1'),
    )),
    new DataColumn(label: new GestureDetector(
    onTap: () {
    print('column 2 tap');
    },
    child: Text('column 2'),
    )),
    new DataColumn(label: new GestureDetector(
    onTap: () {
    print('column 3 tap');
    },
    child: Text('column 3'),
    )),
    ],
    rows: <DataRow>[
    new DataRow(cells: <DataCell>[
    new DataCell(Text('cell 1'), onTap: () {
    print('cell 1 tap');
    }),
    new DataCell(Text('cell 2'), onTap: () {
    print('cell 2 tap');
    }),
    new DataCell(Text('cell 3'), onTap: () {
    print('cell 3 tap');
    }),
    ]),
    new DataRow(cells: <DataCell>[
    new DataCell(Text('cell 4'), onTap: () {
    print('cell 4 tap');
    }),
    new DataCell(Text('cell 5'), onTap: () {
    print('cell 5 tap');
    }),
    new DataCell(Text('cell 6'), onTap: () {
    print('cell 6 tap');
    }),
    ]),
    ],);
  }
}
