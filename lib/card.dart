import 'package:flutter/material.dart';
/* import 'dart:async'; */

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[Text('New text'), Text('Old text')],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[Text('New text'), Text('Old text')],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[Text('New text'), Text('Old text')],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
