import 'package:flutter/material.dart';
import '../components/input.dart';

class MyComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyComponentState();
  }
}

class MyComponentState extends State<MyComponent> {
  TextEditingController controller;
  String active='0';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('组件界面'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controller,
              onChanged: _onChanged,
            ),
            new MyInput(active: active,)
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(child:new Icon(Icons.favorite,color: Colors.red,),onPressed: _add),
    );
  }

  void _onChanged(String value){
    setState(() {
      active = value;
    });
  }

  void _add(){
    var mactive = (int.parse(active)+1).toString();
    setState(() {
      active = mactive;
    });
  }
}