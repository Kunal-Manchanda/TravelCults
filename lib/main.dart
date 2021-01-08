import 'package:flutter/material.dart';
import 'package:travel_cults/screens/detailScreen/filter_page.dart';
import 'package:travel_cults/screens/navigation_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FilterPage(),
      // NavigationScreen(),
    );
  }
}
