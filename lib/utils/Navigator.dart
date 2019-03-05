import 'package:flutter/material.dart';

class Navigation {
  returnBack (BuildContext context) {
    Navigator.pop(context);
  }
  navigatTo (Function widget, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return widget();
        }
      )
    );
  }
}