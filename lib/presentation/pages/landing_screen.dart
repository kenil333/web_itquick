import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import './../../domain/all.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double toppad = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: whit,
      endDrawer: DrawerMenu(
        size: size,
        title: homestr,
      ),
      body: Builder(
        builder: (context) => CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  kIsWeb
                      ? Container()
                      : Container(
                          height: toppad,
                          width: double.infinity,
                          color: whit,
                        ),
                  NavBarWid(
                    navfunc: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    size: size,
                    title: homestr,
                  ),
                  LandingHomeWid(size: size),
                  LandingAboutWid(size: size),
                  LandingServiceWid(size: size, avail: true),
                  CommonWrap(size: size),
                  LandingCompInfo(size: size),
                  LandingContact(size: size),
                  FooterWid(size: size, title: homestr),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
