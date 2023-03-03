import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 350),
          child: Container(
            child: Column(
              children: [
                Text(
                  "Coming Soon...",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black)),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Image(image: AssetImage("images/Storke2.png")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
