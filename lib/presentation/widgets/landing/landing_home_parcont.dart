import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class LandingHomeParentCont extends StatelessWidget {
  final Size size;
  final Widget child;
  final Color col;
  const LandingHomeParentCont({
    Key? key,
    required this.size,
    required this.child,
    required this.col,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.2,
        horizontal: size.width * 0.06,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(col, BlendMode.colorBurn),
          image: const AssetImage(backimg),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
