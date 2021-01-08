import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:travel_cults/screens/home_screen.dart';
import 'package:travel_cults/screens/welcome_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  bool isSigned = false;
  @override
  void initState() {
    super.initState();
    auth.FirebaseAuth.instance.authStateChanges().listen((auth.User user) {
      if (user != null) {
        if (this.mounted) {
          setState(() {
            isSigned = true;
          });
        }
      } else {
        if (this.mounted) {
          setState(() {
            isSigned = false;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isSigned ? HomeScreen() : WelcomeScreen(),
    );
  }
}
