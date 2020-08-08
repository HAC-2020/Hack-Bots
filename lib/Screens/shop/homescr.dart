import 'package:flutter/material.dart';
import 'package:covid_app/Screens/shop/global.dart';
import 'package:covid_app/widgets/categorycontainer.dart';
import 'package:covid_app/widgets/productcontainer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Color(0xfff9f9f9),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Shop",
              style: Theme.of(context).textTheme.display1.apply(
                    fontWeightDelta: 2,
                    color: Colors.black,
                  ),
            ),
            Text("Everything you need to fight COVID-19",
                style:
                    Theme.of(context).textTheme.display1.copyWith(height: .9)),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 81,
              child: CategoryContainer(),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Masks",
              style: Theme.of(context).textTheme.title.apply(
                    fontWeightDelta: 2,
                    color: Colors.white70
                  ),
            ),
            SizedBox(
              height: 11,
            ),
            GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: .7
              ),
              itemCount: productsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductContainer(id: index);
              },
            )
          ],
        ),
      ),
    );
  }
}