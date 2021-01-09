import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({
    @required this.image,
    @required this.title,
    @required this.days,
    @required this.nights,
    @required this.discount,
    @required this.hotelIncluded,
    @required this.finalCost,
    @required this.prevCost,
  });

  final String image;
  final String title;
  final String days;
  final String nights;
  final String discount;
  final String hotelIncluded;
  final String finalCost;
  final String prevCost;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.025,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.width * 0.025,
              ),
              child: Container(
                height: size.width * 0.45,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.width * 0.045,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              offset: Offset(0, 0),
                              blurRadius: 20,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Text(
                          title,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 3.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Starting from:",
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "$days Days & $nights Nights",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 3.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Rs. $finalCost/-",
                        style: GoogleFonts.roboto(
                          color: Colors.green,
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Rs. $prevCost/-",
                        style: GoogleFonts.roboto(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Center(
                            child: Text(
                              "$discount% Off",
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.0,
                        ),
                        child: Icon(
                          CupertinoIcons.info,
                          size: 20,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 3.0,
              ),
              child: Text("Per Person on twin sharing"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 3.0,
              ),
              child: Row(
                children: [
                  Text(
                    "Hotel included:",
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.teal,
                    ),
                  ),
                  Text(
                    "$hotelIncluded Star",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 3.0,
              ),
              child: Row(
                children: [
                  Text(
                    "Cities:",
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.3,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(
                    "Port Blair (4D)",
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    child: Icon(
                      FontAwesomeIcons.arrowRight,
                      size: 14,
                    ),
                  ),
                  Text(
                    "Havelock (1D)",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      children: [
                        Icon(
                          LineIcons.building_o,
                        ),
                        Text("Upto 2 Stars"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      children: [
                        Icon(
                          LineIcons.plane,
                          color: Colors.grey,
                        ),
                        Text("Flights"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      children: [
                        Icon(FontAwesomeIcons.hamburger),
                        Text("Meals"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      children: [
                        Icon(LineIcons.binoculars),
                        Text("Sightseeing"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      children: [
                        Icon(FontAwesomeIcons.busAlt),
                        Text("Transfers"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: size.width * 0.005,
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(size.width * 0.01))),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "View Details",
                          style: GoogleFonts.roboto(
                            color: Colors.red,
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        width: size.width * 0.005,
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(size.width * 0.01),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Customize",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
