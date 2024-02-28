import 'package:able_us/View/ServicesPage.dart';
import 'package:able_us/View/homePage.dart';
import 'package:flutter/material.dart';

var pageIndex = 2;
var barIndex = pageIndex;
var previousIndex = 3;
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var pages = <Widget>[
    HomePage(), //Community Page
    HomePage(), // Alerts Page
    HomePage(), // Home
    HomePage(), //Reminders
    HomePage(), //Profile
    ServicesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    if (pageIndex != previousIndex) {
      setState(() {
        previousIndex = pageIndex;
      });
    }
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          enableFeedback: true,
          elevation: 5,
          selectedItemColor: const Color(0XffFB943B),
          unselectedItemColor: const Color(0xff3EA4ED),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Alerts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("Assets/Icons/Medicin Timer.png"),
              ),
              label: "Reminders",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          currentIndex: barIndex,
          onTap: (int index) {
            setState(() {
              pageIndex = index;
              if (pageIndex < 5) {
                barIndex = pageIndex;
              }
            });
          },
        ),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            pages[pageIndex],
          ],
        ),
      ),
    );
  }
}
