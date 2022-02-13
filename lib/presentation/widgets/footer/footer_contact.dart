import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class FooterContact extends StatelessWidget {
  const FooterContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Contact Us",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: whit,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Email",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: whit70,
          ),
        ),
        Text(
          companyemailstring,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: whit70,
          ),
        ),
        SizedBox(height: 7),
        Text(
          "Phone",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: whit70,
          ),
        ),
        Text(
          companycontactnumberstring,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: whit70,
          ),
        ),
        SizedBox(height: 7),
        Text(
          "Address",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: whit70,
          ),
        ),
        Text(
          companyaddressstring,
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
