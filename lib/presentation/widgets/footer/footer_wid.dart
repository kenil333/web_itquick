import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class FooterWid extends StatelessWidget {
  final Size size;
  final String title;
  const FooterWid({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      desk: FooterDesk(size: size, title: title),
      tab: FooterDesk(size: size, title: title),
      mobile: FooterMob(size: size, title: title),
    );
  }
}

class FooterDesk extends StatelessWidget {
  final Size size;
  final String title;
  const FooterDesk({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LandingHomeParentCont(
      size: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              compimg,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 20),
          const Expanded(child: FooterContact()),
          const SizedBox(width: 20),
          Expanded(child: FooterComp(title: title)),
          const SizedBox(width: 20),
          const Expanded(child: FooterServi()),
        ],
      ),
      col: bl87,
    );
  }
}

class FooterMob extends StatelessWidget {
  final Size size;
  final String title;
  const FooterMob({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LandingHomeParentCont(
      size: size,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            compimg,
            width: 200,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 25),
          const SizedBox(width: double.infinity, child: FooterContact()),
          const SizedBox(height: 25),
          SizedBox(
              width: double.infinity,
              child: FooterComp(
                title: title,
              )),
          const SizedBox(height: 25),
          const SizedBox(width: double.infinity, child: FooterServi()),
        ],
      ),
      col: bl87,
    );
  }
}
