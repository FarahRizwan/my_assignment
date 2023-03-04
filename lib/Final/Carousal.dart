import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ComingSoon.dart';

class Carousal extends StatelessWidget {
  const Carousal({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(children: [
          CarouselSlider(
              items: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    height: 480,
                    width: 450,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/red2.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/hoodie.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/blue2.png"),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
              options: CarouselOptions(
                autoPlay: true,
                height: 450,
              )),
          // Container(
          //   decoration: const BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage("images/Popup-Added.png"),
          //           fit: BoxFit.cover)),
          // ),
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
                      "Rs.390",
                      style: GoogleFonts.bebasNeue(
                          textStyle:
                              TextStyle(fontSize: 26, color: Colors.black87)),
                    ),
                  ),
                  Divider(
                    thickness: 4,
                    color: Color.fromARGB(255, 255, 202, 65),
                  ),
                  Text(
                    "Essential bomber jacket in a reversible design from Alpha Industries. Glossy flight satin nylon is cut slim with a full-length front zip closure and rib-knit banding at the collar, cuffs + hem for a perfect fit.",
                    style: GoogleFonts.robotoCondensed(
                        textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w300)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (((context) => ComingSoon()))));
                    }),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/addtocart.png"))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      )),
    );
  }
}
