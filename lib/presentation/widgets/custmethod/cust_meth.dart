import 'package:flutter/material.dart';

class CustMeth {
  pushnav(BuildContext context, Widget widget) {
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}
