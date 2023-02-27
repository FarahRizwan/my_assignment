import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
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
