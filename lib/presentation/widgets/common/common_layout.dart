import 'package:flutter/material.dart';

class CommonLayout extends StatelessWidget {
  final Widget desk;
  final Widget tab;
  final Widget mobile;
  const CommonLayout({
    Key? key,
    required this.desk,
    required this.tab,
    required this.mobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth > 1200) {
          return desk;
        } else if (constraint.maxWidth >= 800 && constraint.maxWidth <= 1200) {
          return tab;
        } else {
          return mobile;
        }
      },
    );
  }
}
