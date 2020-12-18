import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travel_cults/components/input_field.dart';
import 'package:travel_cults/components/password_input_field.dart';
import 'package:travel_cults/constants.dart';
import 'package:travel_cults/loading.dart';
import 'package:travel_cults/screens/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showSpinner = false;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  bool isChecked = false;

  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<String> signUpWithGoogle() async {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final auth.AuthCredential credential = auth.GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final auth.UserCredential authResult =
        await _auth.signInWithCredential(credential);
    final auth.User user = authResult.user;

    if (user != null) {
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final auth.User currentUser = _auth.currentUser;
      assert(user.uid == currentUser.uid);

      print('signInWithGoogle succeeded: $user');

      return '$user';
    }

    return null;
  }

  signUpWithEmailAndPassword() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return showSpinner
        ? Loading()
        : Scaffold(
            key: scaffoldKey,
            resizeToAvoidBottomInset: true,
            body: GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: Container(
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage("https://i.imgur.com/g2bgaz8.jpg"),
                  colorFilter:
                      ColorFilter.mode(kPrimaryColor, BlendMode.overlay),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                )),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 0.8, sigmaY: 0.8),
                  child: Container(
                    color: kPrimaryColor.withOpacity(.6),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(height: size.height * 0.1),
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
                              SizedBox(height: size.height * 0.1),
                              Container(
                                width: size.width * 0.1,
                                height: 5,
                                color: Colors.white,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Sign Up",
                                style: GoogleFonts.nunito(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: size.height * 0.08),
                              InputField(
                                enabled: true,
                                controller: nameController,
                                labelText: "Full Name",
                                inputType: TextInputType.name,
                                onChanged: (value) {},
                              ),
                              SizedBox(height: size.height * 0.03),
                              InputField(
                                enabled: true,
                                controller: emailController,
                                labelText: "Email",
                                inputType: TextInputType.emailAddress,
                                onChanged: (value) {},
                              ),
                              SizedBox(height: size.height * 0.03),
                              PasswordInputField(
                                labelText: "Password",
                                controller: passwordController,
                                onChanged: (value) {},
                              ),
                              SizedBox(height: size.height * 0.03),
                              PasswordInputField(
                                labelText: "Confirm Password",
                                controller: confirmPasswordController,
                                onChanged: (value) {},
                              ),
                              SizedBox(height: size.height * 0.03),
                              InputField(
                                enabled: true,
                                controller: mobileController,
                                labelText: "Mobile Number",
                                inputType: TextInputType.number,
                                onChanged: (value) {},
                              ),
                              SizedBox(height: size.height * 0.03),
                              Row(
                                children: [
                                  Theme(
                                    child: Checkbox(
                                      value: isChecked,
                                      onChanged: (newValue) {
                                        setState(() {
                                          isChecked = newValue;
                                        });
                                      },
                                      checkColor: kPrimaryColor,
                                      activeColor: Colors.white,
                                      focusColor: Colors.white,
                                      hoverColor: Colors.white,
                                    ),
                                    data: ThemeData(
                                      primarySwatch: Colors.blue,
                                      unselectedWidgetColor: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "I Accept T&C & Privacy Policy",
                                    style: GoogleFonts.nunito(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  if (emailController.text.isEmpty) {
                                    SnackBar snackbar = SnackBar(
                                        content:
                                            Text("The email cannot be null"));
                                    scaffoldKey.currentState
                                        .showSnackBar(snackbar);
                                  } else if (passwordController.text.isEmpty) {
                                    SnackBar snackbar = SnackBar(
                                        content: Text(
                                            "The password cannot be null"));
                                    scaffoldKey.currentState
                                        .showSnackBar(snackbar);
                                  } else if (!RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(emailController.text)) {
                                    SnackBar snackbar = SnackBar(
                                        content: Text("Invalid email format"));
                                    scaffoldKey.currentState
                                        .showSnackBar(snackbar);
                                  } else {
                                    signUpWithEmailAndPassword();
                                  }
                                },
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: kPrimaryColor,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height * 0.03),
                              Text(
                                "OR",
                                style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: size.height * 0.03),
                                   InkWell(
                                onTap: () =>
                                    signUpWithGoogle().then((result) => {
                                          if (result != null)
                                            {Navigator.pop(context)}
                                        }),
                                child: Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.7,
                                  decoration: BoxDecoration(
                                    color: Colors.red[900].withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(FontAwesomeIcons.google,
                                          color: Colors.white, size: 20),
                                      Text(
                                        "Sign Up With Google",
                                        style: GoogleFonts.nunito(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: SignInScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                "Have an account ? Sign In",
                                style: GoogleFonts.nunito(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
