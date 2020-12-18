import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final labelText;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final TextInputType inputType;
  final enabled;

  const InputField({
    Key key,
    this.onChanged,
    this.controller,
    this.inputType,
    this.labelText,
    this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        enabled: enabled,
        keyboardType: inputType,
        controller: controller,
        onChanged: onChanged,
        cursorColor: Colors.white54,
        style: GoogleFonts.nunito(
          color: Colors.white54,
        ),
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle:
                GoogleFonts.nunito(fontSize: 15, color: Colors.white),
            border: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
            )),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
