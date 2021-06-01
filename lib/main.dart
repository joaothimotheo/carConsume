import 'package:flutter/material.dart';
import 'package:flutter_range/home/home.dart';
import 'package:flutter_range/splash/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (BuildContext context) => SplashScreen(),
        '/home': (BuildContext context) => HomeScreen(),
      },
    ),
  );
}
