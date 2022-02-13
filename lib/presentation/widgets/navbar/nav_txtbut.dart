import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class NavTxtBut extends StatelessWidget {
  final Size size;
  final String title;
  final Function txtfunc;
  const NavTxtBut({
    Key? key,
    required this.size,
    required this.title,
    required this.txtfunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: size.width * 0.03,
      ),
      child: InkWell(
        onTap: () {
          txtfunc();
        },
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 15.5,
            color: high23,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
