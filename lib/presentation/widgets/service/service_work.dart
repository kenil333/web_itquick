import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class ServiceWork extends StatelessWidget {
  final Size size;
  const ServiceWork({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green[50],
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
        vertical: 30,
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            "HOW WE WORK",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: low7,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Working Process",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: high23,
            ),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 30,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < workinglist.length; i++)
                Container(
                  width: 280,
                  margin: const EdgeInsets.only(bottom: 40),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: whit,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: SvgPicture.asset(
                              workinglist[i].svgimg,
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: prim,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                workinglist[i].count,
                                style: const TextStyle(
                                  color: whit,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        workinglist[i].title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: high23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
