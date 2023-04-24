import 'dart:async';

import 'package:flutter/material.dart';


class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  State<LogoScreen> createState() => _SplseScreenState();
}

class _SplseScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {

   Timer(Duration(seconds: 3), () {
     Navigator.pushReplacementNamed(context,'home' );
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tast Me",style: TextStyle(fontWeight:FontWeight.w800,color: Colors.white,fontSize: 90),
              )
            ],
          ),
        ),
      ),
    );
  }
}