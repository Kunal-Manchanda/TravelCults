import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        )),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.8, sigmaY: 0.8),
          child: Container(
            color: kPrimaryColor.withOpacity(.6),
            child: Column(
              children: [
                // ClipPath(
                //   child: Container(
                //     width: MediaQuery.of(context).size.width,
                //     height: 80,
                //     color: Colors.white,
                //   ),
                //   clipper: Clipper(),
                // ),
                SizedBox(height: size.height * 0.15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "TravelCults",
                      style: GoogleFonts.merienda(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Travel with no regrets",
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(height: size.height * 0.45),
                RoundedButton(
                  size: size,
                  color: Colors.white.withOpacity(0.3),
                  title: "Sign in",
                  titleColor: Colors.white,
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen())),
                ),
                SizedBox(height: size.height * 0.03),
                RoundedButton(
                  size: size,
                  color: Colors.white.withOpacity(0.3),
                  title: "Sign up",
                  titleColor: Colors.white,
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen())),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final color, title, titleColor, onPressed;
  const RoundedButton({
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
      child: Container(
        height: size.height * 0.07,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
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
    );
  }
}
