import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeButtons extends StatelessWidget {
  final icon;
  final content;
  final iconColor;

  const HomeButtons({
    Key key,
    this.icon,
    this.content,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.07,
          width: size.width * 0.16,
          decoration: BoxDecoration(
              color: Colors.grey.shade200.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Image.asset(
              icon,
              color: iconColor,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          content,
          style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 16),
        ),
      ],
    );
  }
}
