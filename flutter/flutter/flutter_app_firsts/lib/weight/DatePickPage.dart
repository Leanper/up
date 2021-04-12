import 'package:flutter/material.dart';
import 'package:city_pickers/city_pickers.dart';

class DatePickPage extends StatefulWidget {
  @override
  _DatePickPageState createState() => _DatePickPageState();
}

class _DatePickPageState extends State<DatePickPage> {

      String date1="日期";
      String date2="时间";
      String date3="城市";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(context),
        appBar: AppBar(
          title: Text("DatePick"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody(BuildContext context) {


  return Column(
    children: <Widget>[
      DatePick1(),
      DatePick2(context),
      DatePick3(context),
    ],
  );
  }


  Widget DatePick1(){
       return RaisedButton(
      child: Text(date1),

      onPressed: (){

         showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2018),
          lastDate: DateTime(2030),

          builder: (BuildContext context, Widget child) {
            return Theme(
              data: ThemeData.dark(),
              child: child,
            );
          },
        ).then((DateTime value){
          print(value);
          setState(() {
            date1=value.toString();

          });
         });
      },
    );
  }

  Widget DatePick2(BuildContext context){
    return RaisedButton(
      child: Text(date2),
      onPressed: (){
        showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),

        ).then((TimeOfDay t){
          setState(() {
            date2=t.toString();
          });
        });
      },
    );
  }

   show(context) async{
     Result temp=  await CityPickers.showCityPicker(
         context: context);

     setState(() {
       date3 = "${temp.toString()}";
     });

   }
  Widget DatePick3(BuildContext context){
    return RaisedButton(
          child: Text("result: ${date3.toString()}"),
           onPressed: (){
              show(context);
           },
        );
  }


}
