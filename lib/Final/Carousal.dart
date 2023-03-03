import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ComingSoon.dart';

class Carousal extends StatelessWidget {
  const Carousal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        CarouselSlider(items: [
          Container(
            height: 480,
            width: 450,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/red2.png"), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("images/hoodie.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/multi2.png"), fit: BoxFit.cover)),
          )
        ], options: CarouselOptions(autoPlay: false, height: 500)),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/Popup-Added.png"),
                  fit: BoxFit.cover)),
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
                    "Rs.390",
                    style: GoogleFonts.bebasNeue(
                        textStyle:
                            TextStyle(fontSize: 26, color: Colors.black87)),
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
                            textStyle:
                                TextStyle(fontSize: 22, color: Colors.black)),
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
                                  builder: (((context) => ComingSoon()))));
                        }),
                        child: Container(
                          height: 70,
                          width: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/addtocart.png"))),
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
      ]),
    ));
  }
}
