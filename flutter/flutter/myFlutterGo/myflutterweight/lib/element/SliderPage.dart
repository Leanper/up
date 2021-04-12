import 'package:flutter/material.dart';
import 'package:myflutterweight/utils/colorUtils.dart';
class SliderPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<SliderPage> {
  double initcount=0.0;
  double initcounttheme=0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: buildAppBar(context),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        title: Text("Slider"),
        backgroundColor: GlobalColorConfig.themeColor,
        leading: Container(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                    Navigator.pop(context);
                  }),
                ],
              ),
            ],
          ),
        ),
      );
  }

  Widget MyBody() {
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "进度条",
                    style: TextStyle(),
                  ),
                  RichText(
                      text:
                          TextSpan(text: "sdsdsd", style: TextStyle(color: Colors.red))),
                  Slider(
                      value: this.initcount,
                      min: 0.0,
                      max: 100,
                      activeColor: Colors.red,
                      inactiveColor: Colors.yellow,
                      divisions: 10,
                      label: 'value $initcount',
                      onChanged: (double) {
                        setState(() {
                          initcount = double.roundToDouble();
                        });
                      }),

                  //slidertheme
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTickMarkColor: Colors.yellow,
                          activeTrackColor: Colors.red,
                          thumbColor: Colors.blueAccent,
                          valueIndicatorColor: Colors.grey,
                          overlayColor: Colors.tealAccent),
                      child: Container(
                        color: Colors.white,
                        width: 300,
                        child: Row(
                          children: <Widget>[
                            Text('开始'),
                            Expanded(
                                flex: 1,
                                child: Slider(
                                    max: 100,
                                    divisions: 10,
                                    min: 0,
                                    value: initcounttheme,
                                    label: "aa$initcounttheme",
                                    onChanged: (double) {
                                      setState(() {
                                        initcounttheme = double.roundToDouble();
                                      });
                                    })),
                            Text("100"),
                          ],
                        ),
                      )),

                  Slider(
                    value: initcounttheme,
                    max: 100.0,
                    activeColor: Colors.deepPurple,
                    inactiveColor: Colors.red,

//          divisions: 10,
                    label: "值为$initcounttheme",
                    onChanged: (value) {
                      setState(() {
                        initcounttheme = value;
                      });
                    },
                  )
                ],
              ),
            ],
          ),

          IndexedStack(

          )
        ],
      ),
    );
  }
}
