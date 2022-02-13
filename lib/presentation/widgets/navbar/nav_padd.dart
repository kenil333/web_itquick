import 'package:flutter/material.dart';

class NavPadding extends StatelessWidget {
  final Size size;
  final Widget child;
  const NavPadding({
    Key? key,
    required this.size,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
      ),
      child: child,
    );
  }
}
