import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                ),
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('images/myImage.jpg'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Mohammed J Hossain',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'SOFTWARE DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceCodePro',
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  padding: EdgeInsets.all(20.0),
                  color: Colors.green,
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          '+1 (929)990-8890',
                          style: TextStyle(
                            fontFamily: 'SourceCodePro',
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  padding: EdgeInsets.all(20.0),
                  color: Colors.green,
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          'mjhossainnyc@gmail.com',
                          style: TextStyle(
                            fontFamily: 'SourceCodePro',
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
