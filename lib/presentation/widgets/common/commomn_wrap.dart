import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CommonWrap extends StatelessWidget {
  final Size size;
  const CommonWrap({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Wrap(
        spacing: 30,
        alignment: WrapAlignment.center,
        children: [
          for (int i = 0; i < servicelist.length; i++)
            LandingDiffServ(
              size: size,
              svima: servicelist[i].svgimg,
              sertitle: servicelist[i].title,
              serdescription: servicelist[i].description,
            ),
        ],
      ),
    );
  }
}
