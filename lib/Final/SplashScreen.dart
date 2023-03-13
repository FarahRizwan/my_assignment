import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_assignment/Final/Register.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 2),
        (() => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: ((context) => const Register())))));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 310, left: 79),
            child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("images/logo.png")))),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/Spl.png"))),
          )
        ],
      ),
    );
  }
}
