import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    @required this.title,
    @required this.thirdStar,
    @required this.fourthStar,
    @required this.fifthStar,
  });

  final String title;
  final Color thirdStar;
  final Color fourthStar;
  final Color fifthStar;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2,
          ),
          child: Icon(
            FontAwesomeIcons.solidStar,
            size: 12,
            color: Colors.yellow,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2,
          ),
          child: Icon(
            FontAwesomeIcons.solidStar,
            size: 12,
            color: Colors.yellow,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2,
          ),
          child: Icon(
            FontAwesomeIcons.solidStar,
            size: 12,
            color: thirdStar,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2,
          ),
          child: Icon(
            FontAwesomeIcons.solidStar,
            size: 12,
            color: fourthStar,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2,
          ),
          child: Icon(
            FontAwesomeIcons.solidStar,
            size: 12,
            color: fifthStar,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            title,
            style: GoogleFonts.roboto(),
          ),
        ),
      ],
    );
  }
}
