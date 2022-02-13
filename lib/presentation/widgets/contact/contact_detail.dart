import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class ContactDetail extends StatelessWidget {
  final bool col;
  final String first;
  final String second;
  final String thired;
  const ContactDetail({
    Key? key,
    required this.col,
    required this.first,
    required this.second,
    required this.thired,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: col ? Colors.green[50] : Colors.green[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            first,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 22,
              color: high23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            second,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 16,
              color: high23,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            thired,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 22,
              color: high23,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
