import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class SwitchPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<SwitchPage> {
  bool switchcheck=false;
  bool switchListcheck=false;
  int count=4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Switch"),
          backgroundColor: GlobalColorConfig.themeColor,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }

  onChange(bool v){
    this.setState((){
      this.switchcheck=!this.switchcheck;
    });
  }

  Widget MyBody() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Switch(value: this.switchcheck, onChanged: (T){
              onChange(T);
            }),
            Text("Switch"),
          ],
        ),


        SwitchListTile(
            value: this.switchListcheck,
            title: Text("SwitchListTile"),
            secondary: Icon(Icons.new_releases),
            onChanged: (bool value) {
              setState(() {
                switchListcheck = value;
              });
            }),

        AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(child: child, scale: animation);
            return ScaleTransition(child: child, scale: animation);
          },
          child: Text("$count",
            key: ValueKey<int>(count),
            style: Theme.of(context).textTheme.display4,),


        ),
        RaisedButton(
          child: const Text('AnimatedSwitcher'),
          onPressed: () {
            setState(() {
              count += 1;
            });
          },
        ),


      ],
    );
  }
}
