import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class LandingAboutDetail extends StatelessWidget {
  final String firststr;
  final String secodstr;
  final String description;
  final String bytstr;
  final Function func;
  final bool butavail;
  const LandingAboutDetail({
    Key? key,
    required this.firststr,
    required this.secodstr,
    required this.description,
    required this.bytstr,
    required this.func,
    required this.butavail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              firststr,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: low7,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                secodstr,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: high23,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: low7,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 20),
        butavail
            ? Row(
                children: [
                  Expanded(child: Container()),
                  CommonBut(title: bytstr, combutfunc: func),
                ],
              )
            : Container(),
      ],
    );
  }
}
