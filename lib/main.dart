import 'dart:async';

import 'package:covid_app/Screens/Home_Page.dart';
import 'package:flutter/material.dart';

void main() => runApp(CovidApp());


class CovidApp extends StatefulWidget {
  @override
  _CovidAppState createState() => _CovidAppState();
}

class _CovidAppState extends State<CovidApp> {
  bool busy = true;

  navigationPage() {
    setState(() {
      busy = false;
    });
  }
  void initState() {
    super.initState();
    startTime();
    
  }
  startTime() async {
    var _duration = new Duration(seconds: 6);
    return new Timer(_duration, navigationPage);
  }


  @override
  Widget build(BuildContext context) {

    return !busy?MaterialApp(
      theme : ThemeData.light(),
      home: HomeScr(),
    ):MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: Image.network("https://i.pinimg.com/originals/3e/81/42/3e81427fe87e2766a5f1bd3dc8c15d1d.jpg"),)
      ),
    );
  }
}