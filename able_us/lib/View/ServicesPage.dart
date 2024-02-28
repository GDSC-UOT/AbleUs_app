import 'package:able_us/Componenets/AppName.dart';
import 'package:able_us/Componenets/ServiceDisplay.dart';
import 'package:able_us/Componenets/SubTitle.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppName(),
        SubTitle("Medical Services"),
        ServiceDisplay("Full Body Checkup", "test", "4.5", "Baghdad, Karrada"),
        ServiceDisplay("Full Body Checkup", "test", "4.5", "Baghdad, Karrada"),
        ServiceDisplay("Full Body Checkup", "test", "4.5", "Baghdad, Karrada"),
        ServiceDisplay("Full Body Checkup", "test", "4.5", "Baghdad, Karrada"),
        ServiceDisplay("Full Body Checkup", "test", "4.5", "Baghdad, Karrada"),
        ServiceDisplay("Full Body Checkup", "test", "4.5", "Baghdad, Karrada"),
        ServiceDisplay("Full Body Checkup", "test", "4.5", "Baghdad, Karrada"),
        ServiceDisplay("Full Body Checkup", "test", "4.5", "Baghdad, Karrada"),
      ],
    );
  }
}
