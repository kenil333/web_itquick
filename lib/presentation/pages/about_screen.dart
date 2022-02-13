import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import './../../domain/all.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double toppad = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: whit,
      endDrawer: DrawerMenu(
        size: size,
        title: aboutstr,
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
                    title: aboutstr,
                  ),
                  CommonFirst(size: size, title: aboutstr),
                  AboutUs(size: size),
                  LandingCompInfo(size: size),
                  AboutWhyText(size: size),
                  AboutChoose(size: size),
                  const SizedBox(height: 30),
                  AbouteCeo(size: size),
                  LandingContact(size: size),
                  FooterWid(size: size, title: aboutstr),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
