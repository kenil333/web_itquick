import 'package:flutter/material.dart';
import './../../../domain/all.dart';

class AboutUs extends StatelessWidget {
  final Size size;
  const AboutUs({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      desk: AboutUsDesk(size: size),
      tab: AboutUsDesk(size: size),
      mobile: AboutUsMob(size: size),
    );
  }
}

class AboutUsDesk extends StatelessWidget {
  final Size size;
  const AboutUsDesk({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonPadding(
      size: size,
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(abtlnimg, fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: size.width * 0.04),
          SizedBox(
            width: size.width * 0.55,
            child: LandingAboutDetail(
              firststr: aboutstr,
              secodstr: "IT Quick",
              description: aboutdetailstring,
              bytstr: "Read More",
              func: () {
                CustMeth().pushnav(context, const AboutScreen());
              },
              butavail: false,
            ),
          ),
        ],
      ),
    );
  }
}

class AboutUsMob extends StatelessWidget {
  final Size size;
  const AboutUsMob({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonPadding(
      size: size,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(abtlnimg, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 50),
          LandingAboutDetail(
            firststr: aboutstr,
            secodstr: "IT Quick",
            description: aboutdetailstring,
            bytstr: "Read More",
            func: () {
              CustMeth().pushnav(context, const AboutScreen());
            },
            butavail: false,
          ),
        ],
      ),
    );
  }
}
