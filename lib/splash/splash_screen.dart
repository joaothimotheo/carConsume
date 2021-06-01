import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var windoWidth;
  var windowHeight;

  startTime() {
    var duration = new Duration(seconds: 3);
    return Timer(
      duration,
      () {
        Navigator.popAndPushNamed(context, '/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    windoWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'SplashLogo',
                  child: Container(
                    width: windoWidth * 0.4,
                    child: Image.asset(
                      'assets/splash.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.black,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  strokeWidth: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
