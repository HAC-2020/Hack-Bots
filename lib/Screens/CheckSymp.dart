import 'package:flutter/material.dart';
import 'package:covid_app/config/palette.dart';
import 'package:covid_app/data/data.dart';
import 'package:covid_app/widgets/widgets.dart';
import 'package:covid_app/widgets/button.dart';
import 'package:covid_app/Screens/report_symptoms_screen.dart';


class CheckSym extends StatefulWidget {
  @override
  _CheckSymState createState() => _CheckSymState();
}

class _CheckSymState extends State<CheckSym> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildSymptoms(screenHeight),
          _buildSymptoms_2(screenHeight),
          _buildReportSymptoms(screenHeight),

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
  bottomLeft: Radius.circular(40.0),
  bottomRight: Radius.circular(40.0),
  ),
  ),
  child: SingleChildScrollView(
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
    ])
    ]),
  )
  )
  );
}

SliverToBoxAdapter _buildSymptoms(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Symptoms',
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: symptoms
                .map((e) => Column(
              children: <Widget>[
                Image.asset(
                  e.keys.first,
                  height: screenHeight * 0.12,
                ),
                SizedBox(height: screenHeight * 0.015),
                Text(
                  e.values.first,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ))
                .toList(),
          ),
        ],
      ),
    ),
  );
}

SliverToBoxAdapter _buildSymptoms_2(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: symptoms_2
                .map((e) =>
                Column(
                  children: <Widget>[
                    Image.asset(
                      e.keys.first,
                      height: screenHeight * 0.12,
                    ),
                    SizedBox(height: screenHeight * 0.015),
                    Text(
                      e.values.first,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ))
                .toList(),
          ),
        ],
      ),
    ),
  );
}

SliverToBoxAdapter _buildReportSymptoms(double screenHeight){
  return SliverToBoxAdapter(
      child: Button(buttonTitle: 'Report Symptoms', textsize: 17, color: 0xFF000000, onTap: (){
        Navigator.of(context).push(_createRoute5());
      })

  );
}
}

Route _createRoute5() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ReportSym(),
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