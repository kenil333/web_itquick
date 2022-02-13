import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class AboutChoose extends StatelessWidget {
  final Size size;
  const AboutChoose({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Wrap(
        spacing: 30,
        alignment: WrapAlignment.center,
        children: [
          for (int i = 0; i < chooseuslist.length; i++)
            Container(
              width: 280,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              margin: const EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                color: whit,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green[200]!,
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    chooseuslist[i].imagesvg,
                    height: 130,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    chooseuslist[i].title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: high23,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
