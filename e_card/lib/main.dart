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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                // This is done by using a Card() and Padding() Widget
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.green,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                    ),
                    title: Text(
                      '+1 (929)990-8890',
                      style: TextStyle(
                        fontFamily: 'SourceCodePro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                // This is done by using a Card() and ListTiles() Widget
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  color: Colors.green,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                    ),
                    title: Text(
                      'mjhossainnyc@gmail.com',
                      style: TextStyle(
                        fontFamily: 'SourceCodePro',
                        fontSize: 20.0,
                      ),
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
