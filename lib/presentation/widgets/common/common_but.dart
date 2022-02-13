import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CommonBut extends StatefulWidget {
  final String title;
  final Function combutfunc;
  const CommonBut({
    Key? key,
    required this.title,
    required this.combutfunc,
  }) : super(key: key);

  @override
  State<CommonBut> createState() => _CommonButState();
}

class _CommonButState extends State<CommonBut> {
  bool _ishover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.combutfunc();
      },
      onHover: (bool ishover) {
        _ishover = ishover;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(
          horizontal: _ishover ? 40 : 30,
          vertical: _ishover ? 15 : 10,
        ),
        decoration: BoxDecoration(
          color: prim,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          widget.title,
          style: const TextStyle(
            color: whit,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
