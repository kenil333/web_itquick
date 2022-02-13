import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import './../../domain/all.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double toppad = MediaQuery.of(context).padding.top;

    _showsnack(String mess, bool error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            mess,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: whit,
            ),
          ),
          backgroundColor: error ? redi : prim,
        ),
      );
    }

    return Scaffold(
      backgroundColor: whit,
      endDrawer: DrawerMenu(
        size: size,
        title: contactstr,
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
                    title: contactstr,
                  ),
                  CommonFirst(size: size, title: contactstr),
                  ContactWid(size: size, shofunc: _showsnack),
                  FooterWid(size: size, title: contactstr),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
