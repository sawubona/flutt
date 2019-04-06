import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

enum Answers { YES, NO, MAYBE }

class _State extends State<MyApp> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future<void> _askedToLead() async {
    switch (await showDialog<Answers>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Changes:'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Answers.YES);
                },
                child: const Text('Yes'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Answers.NO);
                },
                child: const Text('No'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Answers.MAYBE);
                },
                child: const Text('Maybe'),
              ),
            ],
          );
        })) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('No');
        break;
      case Answers.MAYBE:
        _setValue('Maybe');
        break;
    }
  }

  /* Future _askUser() async {
    switch (await showDialog(
        context: context,
        child: SimpleDialog(
          title: Text('Like it'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Yes'),
              onPressed: () => {Navigator.pop(context, Answers.YES)},
            ),
            SimpleDialogOption(
              child: Text('No'),
              onPressed: () => {Navigator.pop(context, Answers.NO)},
            ),
            SimpleDialogOption(
              child: Text('Maybe'),
              onPressed: () => {Navigator.pop(context, Answers.MAYBE)},
            ),
          ],
        ))) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('No');
        break;
      case Answers.MAYBE:
        _setValue('Maybe');
    }
  } */

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
              RaisedButton(
                onPressed: _askedToLead,
                child: Text('Change it!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
