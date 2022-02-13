import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class LandingCompInfo extends StatelessWidget {
  final Size size;
  const LandingCompInfo({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      margin: const EdgeInsets.only(top: 50),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: size.width * 0.06,
        horizontal: 10,
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          for (int i = 0; i < compinfolist.length; i++)
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: 260,
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: whit,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                    child: SvgPicture.asset(
                      compinfolist[i].imgsvg,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        compinfolist[i].amount,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: tex1,
                        ),
                      ),
                      Text(
                        compinfolist[i].title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: low7,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
