import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StatsIndicator extends StatelessWidget {
  final rating;
  final title;
  const StatsIndicator({
    Key key, this.rating, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: 60.0,
          lineWidth: 5.0,
          percent: rating/10,
          center: new Text(rating.toString()),
          progressColor: Colors.indigo[800],
        ),
        Text(
          title,
          style: GoogleFonts.nunito(
              fontSize: 15,
              color: Colors.indigo[300],
              fontWeight: FontWeight.w800),
        )
      ],
    );
  }
}