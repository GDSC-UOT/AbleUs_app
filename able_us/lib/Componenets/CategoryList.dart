import 'package:able_us/main.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 25,
      runSpacing: 76,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Category("Medical Supplies", 5),
            Category("Care House", 6),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Category("In-Home Care", 7),
            Category("Education", 8),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Category("General Supplies", 9),
            Category("Work", 10),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Category("Medical Services", 11),
            Category("Therapy", 12),
          ],
        ),
      ],
    );
  }
}

class Category extends StatefulWidget {
  String name;
  int index;

  Category(this.name, this.index);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: true,
      splashColor: const Color(0XffFB943B),
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: Container(
        height: 156,
        width: 131,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(
            color: const Color(0Xff000000).withOpacity(0.25),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                "Assets/Icons/${widget.name}.png",
                height: 40,
                width: 40,
                color: const Color(0xff3EA4ED),
              ),
            ),
            Text(
              widget.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          pageIndex = widget.index;
        });
      },
    );
  }
}
