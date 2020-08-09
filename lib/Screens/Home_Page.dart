import 'package:covid_app/Screens/Statistics.dart';
import 'package:covid_app/Screens/Prevention_screen.dart';
import 'package:covid_app/Screens/clusters.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/widgets/button.dart';
import 'package:covid_app/config/palette.dart';
import 'package:covid_app/Screens/shop/homescr.dart';
import 'package:covid_app/Screens/NewsFeed.dart';
import 'package:covid_app/Screens/Doctorscreen.dart';

class HomeScr extends StatefulWidget {
  @override
  _HomeScrState createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF303030),
      appBar: AppBar(
          title: Center(child: Text('COVID-19', style: TextStyle(letterSpacing: 2.0), textAlign: TextAlign.center,)),
          backgroundColor: Colors.black,
        ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildStatsButton(screenHeight),
          _buildPreventionButton(screenHeight),
          _buildMapsButton(screenHeight),
          _buildShopButton(screenHeight),
          _buildVideoButton(screenHeight),
          _buildNewsButton(screenHeight),
        ],
      ),
    );
  }

   SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'COVID-19',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ]),
      ),
    );
   }

  SliverToBoxAdapter _buildStatsButton (double screenHeight){


    return SliverToBoxAdapter(child: Container(
      child: Button(
                      onTap: (){
                        Navigator.of(context).push(_createRoute2());
                      },
                      buttonTitle:'Statistics' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    ),
    );
 }

SliverToBoxAdapter _buildPreventionButton (double screenHeight){


    return SliverToBoxAdapter(child: Container(
      child: Button(
                      color: 0xFF424242,
                      onTap: (){
                        Navigator.of(context).push(_createRoute3());
                      },
                      buttonTitle:'Prevention & Symptoms' ,
                      textsize: 25,
                    ),
                    height: 200,
    )
    );
}
    SliverToBoxAdapter _buildMapsButton (double screenHeight){


    return SliverToBoxAdapter(child: Container(
      child: Button(
                      onTap: (){
                        Navigator.of(context).push(_createRoute7());
                      },
                      buttonTitle:'Maps' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    )
    );
 }

  SliverToBoxAdapter _buildShopButton (double screenHeight){


    return SliverToBoxAdapter(child: Container(
      child: Button(
                      onTap: (){
                        Navigator.of(context).push(_createRoute8());
                      },
                      buttonTitle:'Shop' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    )
    );
 }

  SliverToBoxAdapter _buildVideoButton (double screenHeight){


    return SliverToBoxAdapter(child: Container(
      child: Button(
                      onTap: (){
                        Navigator.of(context).push(_createRoute10());
                      },
                      buttonTitle:'Talk to a Doctor' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    )
    );
 }

  SliverToBoxAdapter _buildNewsButton (double screenHeight){


    return SliverToBoxAdapter(child: Container(
      child: Button(
                      onTap: (){
                        Navigator.of(context).push(_createRoute14());
                      },
                      buttonTitle:'Positive News' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    )
    );
 }


}


Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => StatsScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}


Route _createRoute3() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SymptomScr(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
Route _createRoute7() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MyApp(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
Route _createRoute8() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
Route _createRoute10() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DocScr(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute14() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => NewsFeed(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
