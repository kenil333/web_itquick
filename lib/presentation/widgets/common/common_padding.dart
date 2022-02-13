import 'package:flutter/material.dart';

class CommonPadding extends StatelessWidget {
  final Size size;
  final Widget child;
  const CommonPadding({
    Key? key,
    required this.size,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.15,
        horizontal: size.width * 0.06,
      ),
      child: child,
    );
  }
}
