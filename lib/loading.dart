import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:travel_cults/constants.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: SpinKitChasingDots(
          color: kPrimaryColor,
          size: 50.0,
        ),
      )
    );
  }
}