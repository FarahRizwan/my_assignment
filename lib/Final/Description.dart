import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assignment/Constant/Container1.dart';
import 'package:my_assignment/Final/ComingSoon.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container1(),
              Stack(
                children: [
                  Container(
                    height: 30,
                    width: 430,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/Popup-Added.png"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Container(
                  height: 300,
                  width: 350,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Plain Hoodie",
                          style: GoogleFonts.robotoCondensed(
                              textStyle: const TextStyle(
                                  fontSize: 29, fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "#39.00",
                          style: GoogleFonts.bebasNeue(
                              textStyle: TextStyle(
                                  fontSize: 26, color: Colors.black87)),
                        ),
                      ),
                      Divider(
                        thickness: 4,
                        color: Colors.yellow,
                      ),
                      Text(
                        "Essential bomber jacket in a reversible design from Alpha Industries. Glossy flight satin nylon is cut slim with a full-length front zip closure and rib-knit banding at the collar, cuffs + hem for a perfect fit.",
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w300)),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text(
                              ">SHIPPING & RETURNS",
                              style: GoogleFonts.bebasNeue(
                                  textStyle: TextStyle(
                                      fontSize: 22, color: Colors.black)),
                            ),
                            SizedBox(
                              width: 3,
                              height: 3,
                            ),
                            InkWell(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (((context) =>
                                            ComingSoon()))));
                              }),
                              child: Container(
                                height: 70,
                                width: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "images/addtocart.png"))),
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "^COMPOSITION & CARE",
                          style: GoogleFonts.bebasNeue(
                              textStyle:
                                  TextStyle(fontSize: 22, color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
