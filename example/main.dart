import 'package:curvedialog/curvedialog.dart';
import 'package:flutter/material.dart';

void main() {
    runApp(new MaterialApp(
    title: 'Curvedailog Demo',
    home: new Curvedailogexample(),
    debugShowCheckedModeBanner: false,
  ));
    // });
  
}

class Curvedailogexample extends StatefulWidget {
  @override
  _CurvedailogexampleState createState() => _CurvedailogexampleState();
}

class _CurvedailogexampleState extends State<Curvedailogexample> {

_showdialog(){
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
        title: Text("Curvedailog Demo"),
      ),
      body: Center(
        child: Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('Show Dialog'),
                onPressed: _showdialog(),
              ),
            ),
      ),
    );
  }
}

