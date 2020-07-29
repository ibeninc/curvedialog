# Flutter Curved Dialog 

A Simple Curved Dialog Alert with Custom Message Display.

## Getting Started

Add this to your package's pubspec.yaml file:
```
dependencies:
  curvedialog: "^0.0.1"
```
Simple Usage:
```
import 'package:flutter/material.dart';
import 'package:curvedialog/curvedialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CurvedDialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'CurvedDialog Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  void _initiatedialog() {
    showDialog(
        context: context,
        builder: (context) {
        return Curvedialog(
        title: 'Notice Title',
        notice: 'Notice message',
          );
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('Show Dialog',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
                onPressed: _initiatedialog,
                color: Colors.blue
              ),
            ), 
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

```
## Issues
If you encounter problems, open an issue. Pull request are also welcome.