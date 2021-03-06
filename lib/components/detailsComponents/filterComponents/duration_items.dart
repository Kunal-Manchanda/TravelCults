import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DurationItems extends StatelessWidget {
  const DurationItems({
    this.callback,
    this.value,
    this.title,
  });

  final Function callback;
  final bool value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (bool newValue) => callback(newValue),
        ),
        Text(
          title,
          style: GoogleFonts.roboto(),
        ),
      ],
    );
  }
}
