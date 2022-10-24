import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Eticaret ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              children: [
                //BAŞLIK
                buildBaslik(),
                // MAVİ BANNER
                buildBanner(),
                //ikonlarr
                Padding(
                  padding: EdgeInsets.only(top: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //ilk eleman
                      buildIcons(text: "categories", icon: Icons.menu),
                      buildIcons(text: "favorites", icon: Icons.star_border),
                      buildIcons(text: "gifts", icon: Icons.card_giftcard),
                      buildIcons(text: "Best Selling", icon: Icons.people),
                    ],
                  ),
                ),

                //SALES
                SizedBox(height: 40),
                Text(
                  "Sales",
                  style: TextStyle(
                    color: Color(0xFF0A1034),
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                //SALES ITEMS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildSalesItem(
                        text: "Smartphones",
                        photourl: "assets/images/smart.png",
                        discount: "-%50"),
                    buildSalesItem(
                        text: "Smartphones",
                        photourl: "assets/images/smart.png",
                        discount: "-%50"),
                    buildSalesItem(
                        text: "Smartphones",
                        photourl: "assets/images/smart.png",
                        discount: "-%50"),
                    buildSalesItem(
                        text: "Smartphones",
                        photourl: "assets/images/smart.png",
                        discount: "-%50"),
                  ],
                ),
              ],
              //SALES ITEMS
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSalesItem({
    required String text,
    required String photourl,
    required String discount,
    //required double screenWidth,
  }) {
    return Container(
      //width: (screenWidth - 60) * 0.5,
      padding: EdgeInsets.only(
        left: 12,
        top: 12,
        bottom: 21,
        right: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //%50 indirim
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color(0xFFE0ECF8)),
            child: Text(
              discount,
              style: TextStyle(
                color: Color(0xFF1F53E4),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //telefon forografı
          Image.asset(photourl),
          SizedBox(height: 22),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF1F53E4),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIcons({
    required String text,
    required IconData icon,
  }) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 216, 214, 209),
          ),
          child: Icon(
            icon,
            color: Colors.blue[900],
            size: 18,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.blue[900],
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildBanner() {
    return Padding(
      padding: EdgeInsets.only(
        top: 24,
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 24,
          right: 36,
          top: 14,
          bottom: 18,
        ),
        decoration: BoxDecoration(
          color: Color(
            0xFF0001FC,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Base Home Speaker",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "1500tl",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Image.asset("assets/images/speaker.png"),
          ],
        ),
        //
      ),
    );
  }

  Widget buildBaslik() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Text(
        "HOME",
        style: TextStyle(
          fontSize: 32,
          color: Color(0xFF0A1034),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
