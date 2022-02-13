import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class LandingHomeWid extends StatelessWidget {
  final Size size;
  const LandingHomeWid({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      desk: LandingHomeDesk(size: size),
      tab: LandingHomeDesk(size: size),
      mobile: LandingHomeMob(size: size),
    );
  }
}

class LandingHomeDesk extends StatelessWidget {
  final Size size;
  const LandingHomeDesk({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LandingHomeParentCont(
      size: size,
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.6,
            child: LandingHomeDetailWid(size: size),
          ),
          Expanded(child: Container()),
        ],
      ),
      col: bl54,
    );
  }
}

class LandingHomeMob extends StatelessWidget {
  final Size size;
  const LandingHomeMob({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LandingHomeParentCont(
      size: size,
      child: LandingHomeDetailWid(size: size),
      col: bl54,
    );
  }
}
