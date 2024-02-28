import 'package:able_us/Componenets/Button.dart';
import 'package:able_us/Componenets/CategoryList.dart';
import 'package:able_us/Componenets/ServiceDisplay.dart';
import 'package:able_us/Componenets/SubTitle.dart';
import 'package:able_us/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Componenets/AppName.dart';
import 'Page.dart';

class HomePage extends StatefulWidget {
  HomePage() {}
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppName(),
        SubTitle("Featured"),
        Button(Icons.headphones),
        ServiceDisplay("Full Body Checkup", "test", "4.5", "Baghdad, Karrada"),
        SubTitle("Services"),
        CategoryList(),
      ],
    );
  }
}
