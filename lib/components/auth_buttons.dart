import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButtons extends StatelessWidget {
  final color, title, titleColor, onPressed;
  const AuthButtons({
    Key key,
    @required this.size,
    this.color,
    this.title,
    this.onPressed,
    this.titleColor,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size.width * 0.025),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
          child: Container(
            height: size.width * 0.14,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(size.width * 0.025),
              border: Border.all(
                color: Colors.white.withOpacity(0.1),
                width: 1.8,
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: titleColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
