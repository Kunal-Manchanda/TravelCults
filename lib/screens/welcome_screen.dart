import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travel_cults/components/auth_buttons.dart';
import 'package:travel_cults/constants.dart';
import 'package:travel_cults/screens/sign_in_screen.dart';
import 'package:travel_cults/screens/sign_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.imgur.com/g2bgaz8.jpg"),
            colorFilter: ColorFilter.mode(kPrimaryColor, BlendMode.overlay),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            color: kPrimaryColor.withOpacity(.6),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.15),
                Hero(
                  tag: "authIcon",
                  child: Image.asset(
                    "assets/images/logo_text.png",
                    height: size.width * 0.35,
                    width: size.width * 1,
                  ),
                ),
                Text(
                  "Travel without regrets",
                  style: GoogleFonts.merienda(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.35,
                ),
                AuthButtons(
                  size: size,
                  color: Colors.white.withOpacity(0.25),
                  title: "Sign in",
                  titleColor: Colors.white,
                  onPressed: () => Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: SignInScreen(),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                AuthButtons(
                  size: size,
                  color: Colors.white.withOpacity(0.25),
                  title: "Sign up",
                  titleColor: Colors.white,
                  onPressed: () => Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: SignUpScreen(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
