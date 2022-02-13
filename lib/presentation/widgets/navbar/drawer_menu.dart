import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class DrawerMenu extends StatelessWidget {
  final Size size;
  final String title;
  const DrawerMenu({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Drawer(
        child: ListView(
          children: [
            NavPadding(
              size: size,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const NavbarImage(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.clear,
                      color: redi,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            DrawerBut(
              size: size,
              title: homestr,
              icon: Icons.home_outlined,
              butfunc: () {
                if (title != homestr) {
                  Navigator.of(context).pop();
                  Navigator.popUntil(
                    context,
                    (Route<dynamic> predicate) => predicate.isFirst,
                  );
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
            DrawerBut(
              size: size,
              title: aboutstr,
              icon: Icons.info_outline_rounded,
              butfunc: () {
                if (title != aboutstr) {
                  Navigator.of(context).pop();
                  CustMeth().pushnav(context, const AboutScreen());
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
            DrawerBut(
              size: size,
              title: servicestr,
              icon: Icons.task_alt_outlined,
              butfunc: () {
                if (title != servicestr) {
                  Navigator.of(context).pop();
                  CustMeth().pushnav(context, const ServiceScreen());
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
            DrawerBut(
              size: size,
              title: contactstr,
              icon: Icons.contact_page_outlined,
              butfunc: () {
                if (title != contactstr) {
                  Navigator.of(context).pop();
                  CustMeth().pushnav(context, const ContactScreen());
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
