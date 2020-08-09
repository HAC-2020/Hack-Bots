import 'package:flutter/material.dart';
import 'package:covid_app/config/palette.dart';
import 'package:covid_app/widgets/button.dart';
import 'package:covid_app/widgets/widgets.dart';
import 'package:covid_app/widgets/paymentbutton.dart';
import 'package:url_launcher/url_launcher.dart';

class DocScr extends StatefulWidget {
  @override
  _DocScrState createState() => _DocScrState();
}

class _DocScrState extends State<DocScr> {
  @override
  String url = '';
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildDoctorTile(screenHeight),
          _buildPaymentTile(screenHeight),
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
                  'COVID-19',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
          ]
        )
      )
    );
  }
  SliverToBoxAdapter _buildDoctorTile(double screenHeight){
    return SliverToBoxAdapter(
      child: Container(
      child: Button(
                      onTap: (){
                        launch("tel:12345");
                      },
                      buttonTitle:'Call our Dr.Doctor' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    ),
    );
  }

  SliverToBoxAdapter _buildPaymentTile(double screenHeight){
    return SliverToBoxAdapter(
      child: Column(
      children: <Widget>[
        BottomButton(buttonTitle: 'Pay Dr.Doctor', onTap: (){

          setState(() {
            url = ' for payment visit this url:oneclickdapp.com/raja-desire/ on desktop. YOU NEED TO HAVE METAMASK WALLET';
          });
        _buildUrlTile(screenHeight);

      },
      color: 0xFF0b6623 ,
    ),
    Text(url),
      ]
    ),
    );
  }

  SliverToBoxAdapter _buildUrlTile(double screenHeight){
    return SliverToBoxAdapter(
      child: Container(
      child: Button(
                      onTap: (){
                      },
                      buttonTitle:'Visit this url on desktop. You should have metamask wallet to be able to pay. URL: oneclickdapp.com/raja-desire/' ,
                      textsize: 25,
                      color: 0xFF424242,
                    ),
                    height: 200,
    ),
    );
  }
  

}

