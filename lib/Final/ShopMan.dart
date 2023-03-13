import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:my_assignment/Final/Choose.dart';

class ShopMan extends StatefulWidget {
  const ShopMan({super.key});

  @override
  State<ShopMan> createState() => _ShopManState();
}

class _ShopManState extends State<ShopMan> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 6),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Container(
                    height: 60,
                    width: 241,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/Man.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        height: 18,
                        width: 20,
                        child: Text(
                          "All",
                          style: GoogleFonts.robotoCondensed(
                              textStyle:
                                  TextStyle(color: Colors.black, fontSize: 15),
                              decoration: TextDecoration.underline,
                              decorationThickness: 5.0,
                              color: Colors.amber),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 18,
                        width: 70,
                        child: Text(
                          "Hoodies",
                          style: GoogleFonts.robotoCondensed(
                              textStyle:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 18,
                        width: 84,
                        child: Text(
                          "Sweatshirts",
                          style: GoogleFonts.robotoCondensed(
                              textStyle:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 18,
                        width: 70,
                        child: Text(
                          "T-Shirts",
                          style: GoogleFonts.robotoCondensed(
                              textStyle:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 18,
                        width: 60,
                        child: Text(
                          "Jumpers",
                          style: GoogleFonts.robotoCondensed(
                              textStyle:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 18,
                        width: 50,
                        child: Text(
                          "Jackets",
                          style: GoogleFonts.robotoCondensed(
                            textStyle:
                                TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 15, right: 10),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Choose())));
                            }),
                            child: Container(
                              height: 250,
                              width: ((screenWidth / 2) - 30),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                    image: AssetImage("images/red.png"),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Container(
                            height: 250,
                            width: ((screenWidth / 2) - 30),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage("images/multi.png"),
                                )),
                          ),
                          Container(
                            height: 250,
                            width: ((screenWidth / 2) - 30),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage("images/yellow.png"),
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: ((screenWidth / 2) - 30),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage("images/white.png"),
                              )),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          height: 250,
                          width: ((screenWidth / 2) - 30),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage("images/blue.png"),
                              )),
                        ),
                        Container(
                          height: 250,
                          width: ((screenWidth / 2) - 30),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage("images/black.png"),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
