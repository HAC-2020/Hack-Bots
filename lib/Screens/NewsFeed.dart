import 'package:flutter/material.dart';
import 'package:covid_app/widgets/custom_app_bar.dart';
import 'package:covid_app/config/palette.dart';
import 'package:covid_app/widgets/button.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildNewsButton1(screenHeight),
          _buildNewsButton2(screenHeight),
          _buildNewsButton3(screenHeight),
          _buildNewsButton4(screenHeight)
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Latest News Feed',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Fed up of corona news? No problem Only positive news here!',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
          
               
              ]
              )
              ]
              )
      )
    );
  }

  SliverToBoxAdapter _buildNewsButton1 (double screenHeight){


    return SliverToBoxAdapter(child: Container(
      child: Button(
                      onTap: (){
                        _News1();
                      },
                      buttonTitle:'News: Covid situation under control in Delhi, says CM Kejriwal' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    )
    );
 }

SliverToBoxAdapter _buildNewsButton2 (double screenHeight){


    return SliverToBoxAdapter(child: Container(
      child: Button(
                      onTap: (){
                        _News2();
                      },
                      buttonTitle:'News: Russia to register first vaccine for covid on Aug 12th' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    )
    );
 }

SliverToBoxAdapter _buildNewsButton3 (double screenHeight){


    return SliverToBoxAdapter(child: Container(
      child: Button(
                      onTap: (){
                       _News3();
                      },
                      buttonTitle:'News: More than 50% of the cases recovered in India' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    )
    );
 }

SliverToBoxAdapter _buildNewsButton4 (double screenHeight){


    return SliverToBoxAdapter(child: Container(
      child: Button(
                      onTap: (){
                        _News4();
                      },
                      buttonTitle:'News: Amit Shah tests negative for covid-19.' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    )
    );
 }
}


_News1() async {
const url = 'https://timesofindia.indiatimes.com/india/coronavirus-live-updates-8-august-2020/liveblog/77424908.cms';
if (await canLaunch(url)) {
  await launch(url);
} else {
  throw 'Could not launch $url';
}
}

_News2() async {
const url = 'https://www.inventiva.co.in/trends/tamanna/good-news-worlds-first-covid-19-vaccine-will-be-registered-by-russia-on-12-august/';
if (await canLaunch(url)) {
  await launch(url);
} else {
  throw 'Could not launch $url';
}
}

_News3() async {
const url = 'https://www.deccanchronicle.com/nation/current-affairs/150620/some-good-news-covid-recovery-rate-in-india-crosses-50-pc-for-first-t.html';
if (await canLaunch(url)) {
  await launch(url);
} else {
  throw 'Could not launch $url';
}
}

_News4() async {
const url = 'https://www.firstpost.com/health/coronavirus-live-updates-vijayawada-fire-amit-shah-covid-19-india-today-tick-borne-virus-corona-positive-cases-death-delhi-mumbai-maharashtra-lockdown-vaccine-latest-news-corona-kavach-policy-8686771.html';
if (await canLaunch(url)) {
  await launch(url);
} else {
  throw 'Could not launch $url';
}
}