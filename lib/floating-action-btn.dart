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
  String _value = '';
  void _onClick() => setState(() => _value = DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClick,
        backgroundColor: Colors.red,
        mini: false,
        child: Icon(Icons.timer),
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),
            ],
          ),
        ),
      ),
    );
  }
}
