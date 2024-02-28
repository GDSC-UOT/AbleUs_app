import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  IconData icon;
  void onPressed() {}
  Button(this.icon);
  @override
  State<StatefulWidget> createState() => _Button();
}

class _Button extends State<Button> {
  get icon => widget.icon;
  get onPressed => widget.onPressed();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 50),
        shape: const CircleBorder(
          eccentricity: 0.1,
        ),
        backgroundColor: const Color(0xff3EA4ED),
        elevation: 0.0,
        foregroundColor: const Color(0xff3EA4ED),
      ),
      child: Icon(icon),
    );
  }
}
