import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class ContactWid extends StatelessWidget {
  final Size size;
  final Function shofunc;
  const ContactWid({
    Key? key,
    required this.size,
    required this.shofunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      desk: ContactWidDesk(size: size, shofunc: shofunc),
      tab: ContactWidDesk(size: size, shofunc: shofunc),
      mobile: ContactWidMob(size: size, shofunc: shofunc),
    );
  }
}

class ContactWidDesk extends StatelessWidget {
  final Size size;
  final Function shofunc;
  const ContactWidDesk({
    Key? key,
    required this.size,
    required this.shofunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonPadding(
      size: size,
      child: Row(
        children: [
          Expanded(
            child: ContactFromWid(shofunc: shofunc),
          ),
          const SizedBox(width: 40),
          SizedBox(
            width: size.width * 0.35,
            child: Column(
              children: const [
                ContactDetail(
                  col: true,
                  first: "Phone :",
                  second: "Assistance hours: Monday – Friday, 10 am to 6 pm",
                  thired: companycontactnumberstring,
                ),
                SizedBox(height: 30),
                ContactDetail(
                  col: false,
                  first: "Email :",
                  second:
                      "Our support team will get back to in 24-h during standard business hours.",
                  thired: companyemailstring,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContactWidMob extends StatelessWidget {
  final Size size;
  final Function shofunc;
  const ContactWidMob({
    Key? key,
    required this.size,
    required this.shofunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonPadding(
      size: size,
      child: Column(
        children: [
          ContactFromWid(shofunc: shofunc),
          const SizedBox(height: 60),
          const ContactDetail(
            col: true,
            first: "Phone :",
            second: "Assistance hours: Monday – Friday, 10 am to 6 pm",
            thired: companycontactnumberstring,
          ),
          const SizedBox(height: 30),
          const ContactDetail(
            col: false,
            first: "Email :",
            second:
                "Our support team will get back to in 24-h during standard business hours.",
            thired: companyemailstring,
          ),
        ],
      ),
    );
  }
}
