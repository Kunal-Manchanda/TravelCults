import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_cults/components/packageComponents/package_appbar.dart';
import 'package:travel_cults/components/packageComponents/package_card.dart';

class PackageScreen extends StatefulWidget {
  @override
  _PackageScreenState createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: PackageAppBar(
        title: "Andaman Tour Packages",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.width * 0.015,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ExpansionTile(
                title: Text(
                  "Choose By Theme",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/honeymoon.jpg"),
                                ),
                              ),
                            ),
                            Text(
                              "Honeymoon",
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/a-happy-family-vector-21946824.png"),
                                ),
                              ),
                            ),
                            Text(
                              "Family",
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ExpansionTile(
                title: Text(
                  "Choose By Duration",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 150,
                      viewportFraction: 0.3,
                      enableInfiniteScroll: false,
                    ),
                    items: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                        ),
                        width: 80,
                        child: Center(
                          child: Text("1-3"),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Center(
                          child: Text("4-6"),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Center(
                          child: Text("7-9"),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Center(
                          child: Text("10<"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ExpansionTile(
                title: Text(
                  "Choose By Budget",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 150,
                      viewportFraction: 0.3,
                      enableInfiniteScroll: false,
                    ),
                    items: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                        ),
                        width: 80,
                        child: Center(
                          child: Text("Below 10,000"),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Center(
                          child: Text("10,000 - 20,000"),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Center(
                          child: Text("20,000 - 40,000"),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Center(
                          child: Text("40,000 - 60,000"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Text(
                "101 packages | Starting from Rs 11,449/-",
                style: GoogleFonts.roboto(
                  color: Colors.teal,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            PackageCard(
              image: "assets/images/packages/packageImage1.png",
              title: "Andaman Tour Package From Kochi",
              days: "4",
              nights: "3",
              discount: "6",
              hotelIncluded: "2",
              finalCost: "11,449",
              prevCost: "12,180",
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            PackageCard(
              image: "assets/images/packages/packageImage2.png",
              title: "Andaman Nicobar Tour Package From Kerala",
              days: "5",
              nights: "4",
              discount: "8",
              hotelIncluded: "2",
              finalCost: "13,341",
              prevCost: "14,501",
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            PackageCard(
              image: "assets/images/packages/packageImage3.png",
              title: "Beguiling Port Blair Honeymoon Deal Tour Package",
              days: "5",
              nights: "4",
              discount: "15",
              hotelIncluded: "3",
              finalCost: "13,500",
              prevCost: "15,882",
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            PackageCard(
              image: "assets/images/packages/packageImage4.png",
              title: "Enthralling Andaman Tour Package From Jaipur",
              days: "5",
              nights: "4",
              discount: "9",
              hotelIncluded: "2",
              finalCost: "13,525",
              prevCost: "14,863",
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            PackageCard(
              image: "assets/images/packages/packageImage5.png",
              title: "Alluring Port Blair Tour Packages From Ahmedabad",
              days: "4",
              nights: "3",
              discount: "9",
              hotelIncluded: "3",
              finalCost: "13,988",
              prevCost: "15,371",
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            PackageCard(
              image: "assets/images/packages/packageImage6.png",
              title: "Euphoric Port Blair Tour Package",
              days: "5",
              nights: "4",
              discount: "9",
              hotelIncluded: "2",
              finalCost: "14,300",
              prevCost: "15,714",
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            PackageCard(
              image: "assets/images/packages/packageImage7.png",
              title: "Andaman Honeymoon Package From Kochi",
              days: "5",
              nights: "4",
              discount: "8",
              hotelIncluded: "3",
              finalCost: "14,726",
              prevCost: "16,007",
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            PackageCard(
              image: "assets/images/packages/packageImage8.png",
              title: "Extravagant Port Blair Sightseeing Tour Packages",
              days: "4",
              nights: "3",
              discount: "9",
              hotelIncluded: "3",
              finalCost: "14,799",
              prevCost: "16,263",
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.03),
                  child: Text(
                    "Load more (91 packages remaining)",
                    style: GoogleFonts.roboto(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.width * 0.015,
            ),
          ],
        ),
      ),
    );
  }
}
