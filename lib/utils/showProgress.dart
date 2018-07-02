import 'dart:async';
import 'package:flutter/material.dart';
class ShowProgress extends StatefulWidget {
  ShowProgress(this.requestCallback);
  final Future<Object> requestCallback;
  @override
  State<StatefulWidget> createState() {
    return new ShowProgressState();
  }
}

class ShowProgressState extends State<ShowProgress> {

  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 10), (){
      widget.requestCallback.then((result) {
        Navigator.of(context).pop();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new CircularProgressIndicator(),
    );
  }
}