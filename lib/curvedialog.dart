library curvedialog;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Curvedialog extends StatelessWidget {

Curvedialog({
    Key key,
    @required this.title,
    @required this.notice,
    
  }) : super(key: key);

final String title;

final String notice;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.only(right: 16.0),
          height: 150,
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(75),
          bottomLeft: Radius.circular(75),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10))),
          child: Row(
            children: <Widget>[
            SizedBox(width: 10.0),
            CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey.shade200,
            child: Icon(
              Icons.notifications,
              color: Colors.blueGrey,
              size: 30
            ),
              ),
            SizedBox(width: 7.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                        '$title',
                        style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF2D215A),
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                          ],
                        )
                        
                      ],
                    ),
                    
                    SizedBox(height: 10.0),
                    Flexible(
                      child: Text(
                          '$notice'),
                    ),
                    SizedBox(height: 10.0),
                    SingleChildScrollView(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(width: 2.0),
                          Expanded(
                            child: RaisedButton(
                              child: Text("close"),
                              color: Colors.red,
                              colorBrightness: Brightness.dark,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
