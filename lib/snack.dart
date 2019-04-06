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
  final GlobalKey<ScaffoldState> _scafoldstate = GlobalKey<ScaffoldState>();

  void _showBar() {
    _scafoldstate.currentState
        .showSnackBar(SnackBar(content: Text('Hi im snack'), backgroundColor: Colors.blue,));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldstate,
      appBar: AppBar(
        title: Text('Name here'),
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: <Widget>[
              /* Text(_value), */
              RaisedButton(
                onPressed: _showBar,
                child: Text('Click'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
