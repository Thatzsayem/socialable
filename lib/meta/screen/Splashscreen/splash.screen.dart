import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '/app/constants/constant.colors.dart';
import '/meta/screen/Landingscreen/landing.screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({required Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        PageTransition(
            child: LandingPage(), type: PageTransitionType.leftToRight),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: Center(
        child: RichText(
          text: TextSpan(
              text: 'soci',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
              children: [
                TextSpan(
                  text: 'able',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: blueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 34.0),
                ),
              ]),
        ),
      ),
    );
  }
}
