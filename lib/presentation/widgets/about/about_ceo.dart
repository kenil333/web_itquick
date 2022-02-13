import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class AbouteCeo extends StatelessWidget {
  final Size size;
  const AbouteCeo({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
        vertical: 30,
      ),
      child: Column(
        children: [
          const Text(
            "WE ARE AWESOME",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: low7,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Our Managing Directors",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: high23,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Team who are responsible for growth of $compname",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: prim,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 30,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < ceolist.length; i++)
                Container(
                  width: 280,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  margin: const EdgeInsets.only(bottom: 40),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          ceolist[i].ceoimage,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        ceolist[i].name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: high23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        ceolist[i].position,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: low7,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
