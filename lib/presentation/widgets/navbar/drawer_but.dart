import 'package:flutter/material.dart';

import './.../../../../../domain/all.dart';

class DrawerBut extends StatelessWidget {
  final Size size;
  final String title;
  final IconData icon;
  final Function butfunc;
  const DrawerBut({
    Key? key,
    required this.size,
    required this.title,
    required this.icon,
    required this.butfunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        butfunc();
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.06,
          vertical: size.height * 0.03,
        ),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 25,
              color: tex1,
            ),
            SizedBox(width: size.width * 0.05),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: tex1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
