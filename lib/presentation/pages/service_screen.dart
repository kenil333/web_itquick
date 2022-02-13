import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import './../../domain/all.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double toppad = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: whit,
      endDrawer: DrawerMenu(
        size: size,
        title: servicestr,
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
                    title: servicestr,
                  ),
                  CommonFirst(size: size, title: servicestr),
                  LandingServiceWid(size: size, avail: false),
                  const Text(
                    "SERVICES",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: low7,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Services We Provides",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: high23,
                    ),
                  ),
                  const SizedBox(height: 50),
                  CommonWrap(size: size),
                  const SizedBox(height: 30),
                  ServiceWork(size: size),
                  LandingContact(size: size),
                  FooterWid(size: size, title: servicestr),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
