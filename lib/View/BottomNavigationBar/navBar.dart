import 'package:flutter/material.dart';
import 'package:my_wallet/View/Pages/cartPage.dart';
import 'package:my_wallet/View/Pages/historyPage.dart';
import 'package:my_wallet/View/Pages/homePage.dart';
import 'package:my_wallet/View/Pages/profilePage.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  static List<Widget> pages = [
    HomePage(),
    CartPage(),
    HistoryPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: pages.elementAt(index),
          bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              currentIndex: index,
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/3.png',
                    height: myHeight * 0.03,
                    color: Colors.grey.shade300,
                  ),
                  label: '',
                  activeIcon: Image.asset(
                    'assets/3.png',
                    height: myHeight * 0.03,
                    color: Color(0xff7847FC),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/4.png',
                    height: myHeight * 0.03,
                    color: Colors.grey.shade300,
                  ),
                  label: '',
                  activeIcon: Image.asset(
                    'assets/4.png',
                    height: myHeight * 0.03,
                    color: Color(0xff7847FC),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/5.png',
                    height: myHeight * 0.03,
                    color: Colors.grey.shade300,
                  ),
                  label: '',
                  activeIcon: Image.asset(
                    'assets/5.png',
                    height: myHeight * 0.03,
                    color: Color(0xff7847FC),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/6.png',
                    height: myHeight * 0.03,
                    color: Colors.grey.shade300,
                  ),
                  label: '',
                  activeIcon: Image.asset(
                    'assets/6.png',
                    height: myHeight * 0.03,
                    color: Color(0xff7847FC),
                  ),
                ),
              ])),
    );
  }
}
