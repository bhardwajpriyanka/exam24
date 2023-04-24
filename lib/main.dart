import 'package:exam24/screen/add/view/add_screen.dart';
import 'package:exam24/screen/home/view/home_screen.dart';
import 'package:exam24/screen/logo/view/logo_screen.dart';
import 'package:exam24/screen/second/view/second_screen.dart';
import 'package:exam24/screen/tabbar/tabbar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (p0) =>LogoScreen(),
        'tabbar': (p0) =>tabbar_screen(),
        'home': (p0) =>HomeScreen(),
        'add': (p0) =>Data(),
        'second': (p0) =>secondScreen(),
      },
    ),
  );
}

