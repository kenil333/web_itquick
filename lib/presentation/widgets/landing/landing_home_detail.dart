import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class LandingHomeDetailWid extends StatelessWidget {
  final Size size;
  const LandingHomeDetailWid({Key? key, required this.size}) : super(key: key);

//   @override
//   State<LandingHomeDetailWid> createState() => _LandingHomeDetailWidState();
// }

// class _LandingHomeDetailWidState extends State<LandingHomeDetailWid>
//     with SingleTickerProviderStateMixin {
//   AnimationController? _lhomecontroller;
//   Animation<Offset>? _homefirstanimation;

//   @override
//   void initState() {
//     _lhomecontroller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 300),
//     );
//     Future.delayed(const Duration(seconds: 2)).then((_) {
//       _lhomecontroller!.forward();
//     });
//     _homefirstanimation =
//         Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
//             .animate(_lhomecontroller!);

//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Welcome to $compname",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: whit,
                fontWeight: FontWeight.bold,
                fontSize: 42,
              ),
            ),
            SizedBox(height: 20),
            Text(
              landingslogan,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: whit70, fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 50),
          ],
        ),
        Row(
          children: [
            Expanded(child: Container()),
            CommonBut(
              title: "Get Started",
              combutfunc: () {
                CustMeth().pushnav(context, const ContactScreen());
              },
            ),
            SizedBox(width: size.width * 0.05),
          ],
        ),
      ],
    );
  }
}
