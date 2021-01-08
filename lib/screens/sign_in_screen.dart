import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travel_cults/components/input_field.dart';
import 'package:travel_cults/components/password_input_field.dart';
import 'package:travel_cults/constants.dart';
import 'package:travel_cults/loading.dart';
import 'package:travel_cults/screens/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool showSpinner = false;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<String> signInWithGoogle() async {
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

  signInWithEmailAndPassword() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return showSpinner
        ? Loading()
        : Scaffold(
            key: scaffoldKey,
            resizeToAvoidBottomInset: false,
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
                              SizedBox(height: size.height * 0.1),
                              Container(
                                width: size.width * 0.1,
                                height: 5,
                                color: Colors.white,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Sign In",
                                style: GoogleFonts.nunito(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: size.height * 0.08),
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
                                    signInWithEmailAndPassword();
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
                                    signInWithGoogle().then((result) => {
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
                                        "Sign In With Google",
                                        style: GoogleFonts.nunito(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     InkWell(
                              //       onTap: () => signInWithGoogle().then((result) {
                              //         if(result != null){
                              //           Navigator.pop(context);
                              //         }
                              //       }),
                              //       child: CircleAvatar(
                              //         radius: 30,
                              //         backgroundColor: Colors.red,
                              //         child: Icon(
                              //           FontAwesomeIcons.google,
                              //           color: Colors.white,
                              //           size: 20,
                              //         ),
                              //       ),
                              //     ),
                              //     SizedBox(width: 20),
                              //     CircleAvatar(
                              //       radius: 30,
                              //       backgroundColor: Colors.blueAccent,
                              //       child: Icon(
                              //         FontAwesomeIcons.facebookF,
                              //         color: Colors.white,
                              //         size: 20,
                              //       ),
                              //     ),
                              //   ],
                              // )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: SignUpScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                "Don't have an account? Sign up",
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
