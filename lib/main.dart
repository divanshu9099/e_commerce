import 'package:e_commerce_app/pages/jupiter.dart';
import 'package:e_commerce_app/pages/mars.dart';
import 'package:e_commerce_app/pages/saturn.dart';
import 'package:e_commerce_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "welcome_page",
    routes: {"mars": (
        context) => myMars(),
      "saturn": (
          context) => mySaturn(),
      "jupiter": (
          context) => myJupiter(),
    },
  ));
}