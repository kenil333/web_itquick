import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class AboutWhyText extends StatelessWidget {
  final Size size;
  const AboutWhyText({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
        vertical: 50,
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "WE ARE AWESOME",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: low7,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "WHY CHOOSE US",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: high23,
            ),
          ),
        ],
      ),
    );
  }
}
