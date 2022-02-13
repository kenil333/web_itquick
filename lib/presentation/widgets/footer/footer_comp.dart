import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class FooterComp extends StatelessWidget {
  final String title;
  const FooterComp({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Company",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: whit,
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            if (title != homestr) {
              Navigator.popUntil(
                context,
                (Route<dynamic> predicate) => predicate.isFirst,
              );
            }
          },
          child: const Text(
            "Home",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: whit70,
            ),
          ),
        ),
        const SizedBox(height: 7),
        InkWell(
          onTap: () {
            if (title != aboutstr) {
              CustMeth().pushnav(context, const AboutScreen());
            }
          },
          child: const Text(
            "About",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: whit70,
            ),
          ),
        ),
        const SizedBox(height: 7),
        InkWell(
          onTap: () {
            if (title != servicestr) {
              CustMeth().pushnav(context, const ServiceScreen());
            }
          },
          child: const Text(
            "Services",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: whit70,
            ),
          ),
        ),
        const SizedBox(height: 7),
        InkWell(
          onTap: () {
            if (title != contactstr) {
              CustMeth().pushnav(context, const ContactScreen());
            }
          },
          child: const Text(
            "Contact",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: whit70,
            ),
          ),
        ),
      ],
    );
  }
}
