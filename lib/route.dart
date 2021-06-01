import 'package:flutter/cupertino.dart';
import 'package:flutter_range/home/home.dart';
import 'package:flutter_range/splash/splash_screen.dart';

class AppRoute {
  Map<String, StatefulWidget> routes = {
    "/splash": SplashScreen(),
    "/home": HomeScreen(),
  };

  List<StatefulWidget> _stack = [];
  int _seconds = 0;

  setDuration(int seconds) {
    _seconds = seconds;
  }

  disposeLast() {
    if (_stack.isNotEmpty) _stack.removeLast();
  }
}
