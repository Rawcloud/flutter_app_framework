import 'package:flutter/material.dart';
import './views/mylake.dart';
import './views/starup_name.dart';
import './views/myhome.dart';
import './views/component.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new MyLake(),
          new StartUpName(),
          new MyHome(),
          new MyComponent(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(text: 'lake',icon: new Icon(Icons.nature),),
            new Tab(text: 'name',icon: new Icon(Icons.landscape),),
            new Tab(text: 'home',icon: new Icon(Icons.home),),
            new Tab(text: 'component',icon: new Icon(Icons.cake),),
          ],
        ),
      ),
    );
  }
}
