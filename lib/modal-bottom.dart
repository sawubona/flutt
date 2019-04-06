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
  void _showBottom() {
    showModalBottomSheet(
        //?? <void>
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Info',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                RaisedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Text'),
                )
              ],
            ),
          );
        });
  }

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
              /* Text(_value), */
              RaisedButton(onPressed: _showBottom, child: Text('Click me'))
            ],
          ),
        ),
      ),
    );
  }
}
