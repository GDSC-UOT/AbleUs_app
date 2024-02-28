import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  String title;
  SubTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 23),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff3EA4ED),
            ),
          ),
          const Divider(
            color: Color(0xff3EA4ED),
            endIndent: 190,
            indent: 190,
            height: 5,
            thickness: 4,
          ),
        ],
      ),
    );
  }
}
