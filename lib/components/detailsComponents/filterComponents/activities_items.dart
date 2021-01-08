import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivitiesItems extends StatelessWidget {
  const ActivitiesItems({
    @required this.callback,
    @required this.value,
    @required this.title,
    @required this.icon,
  });

  final Function callback;
  final bool value;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Checkbox(
          value: value,
          onChanged: (bool newValue) => callback(newValue),
        ),
        Icon(
          icon,
          color: Colors.teal,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: size.width * 0.015),
          child: Text(
            title,
            style: GoogleFonts.roboto(),
          ),
        ),
      ],
    );
  }
}
