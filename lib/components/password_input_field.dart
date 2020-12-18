
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordInputField extends StatefulWidget {
  final labelText;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  const PasswordInputField({
    Key key,
    this.labelText,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  @override
  Widget build(BuildContext context) {
    bool isObscure = true;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: widget.controller,
        obscureText: isObscure,
        onChanged: widget.onChanged,
        cursorColor: Colors.black,
        style: GoogleFonts.montserrat(
          color: Colors.white54,
        ),
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: GoogleFonts.montserrat(fontSize: 15, color: Colors.white),
          border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              )),
          focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
