import 'package:flutter/material.dart';

class ChipPage extends StatefulWidget {
  @override
  _ChipPageState createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipPage> {
  Color _mycolors=Colors.red;

  String _selected = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyChip(),
        appBar: AppBar(
          title: Text("MyChip"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyChip() {
    return Column(
        children: <Widget>[
        Chips(),
        ChipThemes(),
        ChipThemedatas(),
        ChoiceChips(),
        as(),
    ],
    );
  }

  Widget Chips(){
    return Chip(
      avatar: Icon(Icons.phone_iphone),
      elevation: 16,
      label: Text("lable"),
      deleteIcon: Icon(Icons.delete),

    );
  }

  Widget ChipThemes(){
    return ChipTheme(
      data: ChipTheme.of(context).copyWith(backgroundColor:Colors.red.shade800 ),

//     data: ChipThemeData(backgroundColor: Colors.red, disabledColor: Colors.green, selectedColor: Colors.pink, secondarySelectedColor: Colors.black12, labelPadding: null, padding: null, shape: null, labelStyle: null, secondaryLabelStyle: null, brightness: null),
      child: ChoiceChip(
        label: Text("标签"),
        padding: EdgeInsets.all(10),
        onSelected: (bool value){
          setState(() {
            _mycolors=value?Colors.lightBlueAccent:Colors.red;

          });
        },
        selected: _mycolors == Colors.lightBlue,

      ),
    );
  }

  Widget ChipThemedatas() {
    return ChipTheme(
      data: ChipThemeData.fromDefaults(
        // brightness: Brightness.dark,
          labelStyle: TextStyle(fontSize: 15.0),
          primaryColor: Colors.red,secondaryColor: Colors.red.shade800),
      child: ChoiceChip(
        padding: EdgeInsets.only(left: 100.0,right: 100.0,top: 10.0,bottom: 10.0),
        label: Text('down'),
        onSelected: (bool value) {
          setState(() {
            _mycolors = value ? Colors.black : Colors.red;
          });
        },
        selected: _mycolors == Colors.black,
      ),
    );
  }



  List<String> _sub=<String>[
    'A','B ','C'
  ];

  Iterable<Widget> get actorWidgets sync*{
    for(String choiceSub in _sub){
      yield Padding(
          padding:EdgeInsets.all(15.0) ,
          child: ChoiceChip(
            // avatar: Icon(Icons.access_alarm,size: 20.0,color: Colors.white,),
            //未选定的时候背景
            backgroundColor:Colors.red,
            //被禁用得时候背景
            disabledColor: Colors.blue,
            label: Text(choiceSub),
            labelStyle: TextStyle(fontWeight: FontWeight.w200,fontSize: 15.0),
            labelPadding: EdgeInsets.only(left: 20.0,right: 20.0),

            materialTapTargetSize: MaterialTapTargetSize.padded,
            onSelected: (bool value) {
              setState(() {
                _selected = value ? choiceSub : 'Colors.red';
              });
            },
            selected: _selected == choiceSub,)
      );

    }
  }

  Widget ChoiceChips(){
    return Row(
          children: actorWidgets.toList(),



    );
  }




  final List<ActorFilerEntry> _list=<ActorFilerEntry>[
    const ActorFilerEntry('android', 'ad'),
    const ActorFilerEntry('java', 'ja'),
    const ActorFilerEntry('php', 'ph'),
    const ActorFilerEntry('web', 'wb'),
  ];

  List<String> _filters=<String>[];
  Iterable<Widget> get actorWidget sync*{
    for(ActorFilerEntry actor in _list){
      yield Padding(
        padding: const EdgeInsets.all(4.0),
        child: FilterChip(
          // avatar: CircleAvatar(child: Text(actor.initials),),
          label: Text(actor.name),
          selected: _filters.contains(actor.name),
          onSelected: (bool value){
            setState(() {
              if(value){
                _filters.add(actor.name);
              }else{
                _filters.retainWhere((String name){
                  return name==actor.name;
                });
              }
            });
          },
        ),
      );
    }
  }

  Widget as(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Wrap(
          children: actorWidget.toList(),
        ),
        Text('look for :${_filters.join(',')}')
      ],
    );
  }


}
class ActorFilerEntry{
  final String name;
  final String initials;
  const ActorFilerEntry(this.name,this.initials);
}