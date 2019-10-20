import 'package:flutter/material.dart';
import 'insta_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: new IconThemeData(color: Colors.black),
        primaryTextTheme: new TextTheme(
            title: new TextStyle(color: Colors.black, fontFamily: "Aveny")
        ),
        textTheme: new TextTheme(title: new TextStyle(color: Colors.black))
      ),
      home: InstaHome(),
    );
  }
}

