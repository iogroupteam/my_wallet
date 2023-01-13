import 'package:flutter/material.dart';
import 'package:my_wallet/View/BottomNavigationBar/navBar.dart';

import 'View/Pages/homePage.dart';
import 'View/Pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
