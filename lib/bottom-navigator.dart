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
  List<BottomNavigationBarItem> _items; //like Array(JS)

  String _value = '';
  int _index = 0;

  @override
  void initState() {
    _items = List(); //???
    _items.add(BottomNavigationBarItem(
        icon: Icon(Icons.tv),
        title: Text('Television'))); //add - like push method(JS)
    _items.add(
        BottomNavigationBarItem(icon: Icon(Icons.usb), title: Text('USB')));
    _items.add(
        BottomNavigationBarItem(icon: Icon(Icons.wifi), title: Text('Wi-Fi')));
    /* _items.add(BottomNavigationBarItem(
        icon: Icon(Icons.videocam), title: Text('Cam'))); */
    super.initState();
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
              Text(_value),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        currentIndex: _index,
        onTap: (int item) {
          setState(() {
            _index = item;
            _value = 'The walue is ${_index.toString()}';
          });
        },
      ),
    );
  }
}
