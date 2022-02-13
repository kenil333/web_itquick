import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class NavBarWid extends StatelessWidget {
  final Function navfunc;
  final Size size;
  final String title;
  const NavBarWid({
    Key? key,
    required this.navfunc,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      desk: NavBarDesk(size: size, title: title),
      tab: NavBarDesk(size: size, title: title),
      mobile: NavBarMob(size: size, navf: navfunc, title: title),
    );
  }
}

class NavBarDesk extends StatelessWidget {
  final Size size;
  final String title;
  const NavBarDesk({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavPadding(
      size: size,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              if (title != homestr) {
                Navigator.popUntil(
                  context,
                  (Route<dynamic> predicate) => predicate.isFirst,
                );
              }
            },
            child: const NavbarImage(),
          ),
          Row(
            children: [
              NavTxtBut(
                  size: size,
                  title: homestr,
                  txtfunc: () {
                    if (title != homestr) {
                      Navigator.popUntil(
                        context,
                        (Route<dynamic> predicate) => predicate.isFirst,
                      );
                    }
                  }),
              NavTxtBut(
                size: size,
                title: aboutstr,
                txtfunc: () {
                  if (title != aboutstr) {
                    CustMeth().pushnav(context, const AboutScreen());
                  }
                },
              ),
              NavTxtBut(
                size: size,
                title: servicestr,
                txtfunc: () {
                  if (title != servicestr) {
                    CustMeth().pushnav(context, const ServiceScreen());
                  }
                },
              ),
              NavTxtBut(
                size: size,
                title: contactstr,
                txtfunc: () {
                  if (title != contactstr) {
                    CustMeth().pushnav(context, const ContactScreen());
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NavBarMob extends StatelessWidget {
  final Size size;
  final Function navf;
  final String title;
  const NavBarMob({
    Key? key,
    required this.size,
    required this.navf,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavPadding(
      size: size,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              if (title != homestr) {
                Navigator.popUntil(
                  context,
                  (Route<dynamic> predicate) => predicate.isFirst,
                );
              }
            },
            child: const NavbarImage(),
          ),
          InkWell(
            onTap: () {
              navf();
            },
            child: const Icon(
              Icons.menu_rounded,
              color: prim,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
