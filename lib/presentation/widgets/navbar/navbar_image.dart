import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class NavbarImage extends StatelessWidget {
  const NavbarImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      compimg,
      width: 150,
      fit: BoxFit.contain,
    );
  }
}
