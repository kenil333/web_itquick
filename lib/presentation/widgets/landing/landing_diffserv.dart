import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class LandingDiffServ extends StatefulWidget {
  final Size size;
  final String svima;
  final String sertitle;
  final String serdescription;
  const LandingDiffServ({
    Key? key,
    required this.size,
    required this.svima,
    required this.sertitle,
    required this.serdescription,
  }) : super(key: key);

  @override
  State<LandingDiffServ> createState() => _LandingDiffServState();
}

class _LandingDiffServState extends State<LandingDiffServ> {
  //bool _ishover = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {},
      // onHover: (bool ishover) {
      //   _ishover = ishover;
      //   setState(() {});
      // },
      child: Container(
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
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 100,
              child: SvgPicture.asset(
                widget.svima,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.sertitle,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: high23,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              widget.serdescription,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: low7,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
