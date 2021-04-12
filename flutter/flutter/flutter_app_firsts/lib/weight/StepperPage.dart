import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: MyBody(),
        appBar: AppBar(
          title: Text("Stepper"),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget MyBody() {
    int _index=0;
    return Stepper(
      currentStep: _index,//激活第几条条目 默认第一条
        steps: myList,
      onStepCancel: (){
        setState(() {
          _index=2;

        });
      },
      onStepContinue: (){
        setState(() {
          _index=3;

        });
      },
      onStepTapped: (v){
          setState(() {

          });
      },
    );
  }

  List<Step> myList =[
    new Step(
      title: Text("标题一"),
      content: Text("内容一"),
      state: StepState.complete,
      subtitle: Text("副标题"),
      isActive: false,

    ),
    new Step(
      title: Text("标题一"),
      content: Text("内容一"),
      state: StepState.editing,
      isActive: false,

    ),
    new Step(
      title: Text("标题一"),
      content: Text("内容一"),
      state: StepState.error,
      isActive: false,
    ),
    new Step(
      title: Text("标题一"),
      content: Text("内容一"),
      state: StepState.disabled,
      isActive: false,
    ),
    new Step(
      title: Text("标题一"),
      content: Text("内容一"),
      state: StepState.indexed,
      isActive: false,
    ),
  ];
}
