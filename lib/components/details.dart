import 'package:flutter/material.dart';

class MyDetails extends StatelessWidget{
  final String id;
  MyDetails(this.id);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('详情'),
      ),
      body: new Center(
        child: new Text('当前id为'+id),
      ),
    );
  }
}