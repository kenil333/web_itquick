import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class LandingAboutWid extends StatelessWidget {
  final Size size;
  const LandingAboutWid({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      desk: LandingAboutDesk(size: size),
      tab: LandingAboutDesk(size: size),
      mobile: LandingAboutMob(size: size),
    );
  }
}

class LandingAboutDesk extends StatelessWidget {
  final Size size;
  const LandingAboutDesk({Key? key, required this.size}) : super(key: key);

//   @override
//   State<LandingAboutDesk> createState() => _LandingAboutDeskState();
// }

// class _LandingAboutDeskState extends State<LandingAboutDesk>
//     with SingleTickerProviderStateMixin {
//   AnimationController? _lhomecontroller;
//   Animation<Offset>? _homefirstanimation;

//   @override
//   void initState() {
//     _lhomecontroller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     );
//     Future.delayed(const Duration(seconds: 2)).then((_) {
//       _lhomecontroller!.forward();
//     });
//     _homefirstanimation =
//         Tween<Offset>(begin: const Offset(-1.0, 0.0), end: Offset.zero)
//             .animate(_lhomecontroller!);
//     super.initState();
//   }

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
              butavail: true,
            ),
          ),
        ],
      ),
    );
  }
}

class LandingAboutMob extends StatelessWidget {
  final Size size;
  const LandingAboutMob({Key? key, required this.size}) : super(key: key);

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
            butavail: true,
          ),
        ],
      ),
    );
  }
}
