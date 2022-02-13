import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class LandingServiceWid extends StatelessWidget {
  final Size size;
  final bool avail;
  const LandingServiceWid({
    Key? key,
    required this.size,
    required this.avail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      desk: LandingServiceDesk(size: size, avail: avail),
      tab: LandingServiceDesk(size: size, avail: avail),
      mobile: LandingServiceMob(size: size, avail: avail),
    );
  }
}

class LandingServiceDesk extends StatelessWidget {
  final Size size;
  final bool avail;
  const LandingServiceDesk({
    Key? key,
    required this.size,
    required this.avail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonPadding(
      size: size,
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.5,
            child: LandingAboutDetail(
              firststr: "At Your",
              secodstr: "Service",
              description: servicesstring,
              bytstr: "Read More",
              func: () {
                CustMeth().pushnav(context, const ServiceScreen());
              },
              butavail: avail,
            ),
          ),
          SizedBox(width: size.width * 0.04),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(servlnimg, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}

class LandingServiceMob extends StatelessWidget {
  final Size size;
  final bool avail;
  const LandingServiceMob({
    Key? key,
    required this.size,
    required this.avail,
  }) : super(key: key);

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
              child: Image.asset(servlnimg, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 50),
          LandingAboutDetail(
            firststr: "At Your",
            secodstr: "Service",
            description: servicesstring,
            bytstr: "Read More",
            func: () {},
            butavail: avail,
          ),
        ],
      ),
    );
  }
}
