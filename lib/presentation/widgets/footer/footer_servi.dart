import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class FooterServi extends StatelessWidget {
  const FooterServi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Services",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: whit,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Web Development",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: whit70,
          ),
        ),
        SizedBox(height: 7),
        Text(
          "Mobile App Development",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: whit70,
          ),
        ),
        SizedBox(height: 7),
        Text(
          "Desktop App Development",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: whit70,
          ),
        ),
        SizedBox(height: 7),
        Text(
          "UI/UX Designing",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: whit70,
          ),
        ),
        SizedBox(height: 7),
        Text(
          "Graphics Designing",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: whit70,
          ),
        ),
      ],
    );
  }
}
