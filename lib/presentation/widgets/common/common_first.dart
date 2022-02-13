import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CommonFirst extends StatelessWidget {
  final Size size;
  final String title;
  const CommonFirst({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
        vertical: 30,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(bl54, BlendMode.colorBurn),
          image: AssetImage(backimg),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: whit,
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
      ),
    );
  }
}
