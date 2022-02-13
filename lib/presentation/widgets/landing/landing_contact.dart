import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class LandingContact extends StatelessWidget {
  final Size size;
  const LandingContact({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonPadding(
      size: size,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Call To Action",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: low7,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 28),
          const Text(
            "ANYTHING ON YOUR MIND",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: high23,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            "LET US KNOW",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: prim,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: Container()),
              CommonBut(
                title: "Contact Now",
                combutfunc: () {
                  CustMeth().pushnav(context, const ContactScreen());
                },
              ),
              Expanded(child: Container()),
            ],
          ),
        ],
      ),
    );
  }
}
