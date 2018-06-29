import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  MyInput({Key key,this.active})
  :super(key: key);

  final String active;
  @override
  Widget build(BuildContext context) {

    return new Column(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.only(top: 100.0),
          child: new Text('这是一个组件'),
        ),
        new Container(
          decoration: new BoxDecoration(border: new Border.all(width: 1.0,color: Colors.blue)),
          padding: EdgeInsets.all(20.0),
          child: new Text(active),
        ),
      ],
    );
  }
}