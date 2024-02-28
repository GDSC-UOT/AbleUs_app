import 'package:flutter/material.dart';

class ServiceDisplay extends StatelessWidget {
  String title;
  String reviews;
  String image;
  String location;

  ServiceDisplay(this.title, this.image, this.reviews, this.location);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: FractionallySizedBox(
        alignment: Alignment.center,
        widthFactor: 0.95,
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            image: DecorationImage(
              image: AssetImage("Assets/Images/$image.png"),
              fit: BoxFit.fitWidth,
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.25),
                BlendMode.lighten,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0XffFFD800),
                      semanticLabel: "Rating",
                      size: 25,
                      shadows: [
                        Shadow(
                          blurRadius: 2,
                          color: Color(0X66000000),
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    Text(
                      reviews,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color(0Xff3EA4ED),
                      semanticLabel: "Location",
                      size: 25,
                      shadows: [
                        Shadow(
                          blurRadius: 2,
                          color: Color(0X66000000),
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
