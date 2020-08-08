import 'package:covid_app/Screens/Home_Page.dart';
import 'package:flutter/material.dart';

void main() => runApp(CovidApp());


class CovidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme : ThemeData.light(),
      home: HomeScr(),
    );
  }
}