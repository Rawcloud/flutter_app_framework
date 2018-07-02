import 'package:flutter/material.dart';
import '../components/list.dart';

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'MyHome'
        ),
      ),
      body: new Container(
        child: new MyList(),
      ),
    );
  }
}