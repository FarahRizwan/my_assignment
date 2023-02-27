import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ShopMan extends StatefulWidget {
  const ShopMan({super.key});

  @override
  State<ShopMan> createState() => _ShopManState();
}

class _ShopManState extends State<ShopMan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.person,
                color: Colors.black,
                size: 40,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.shopping_basket)
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 6),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 56,
                  width: 241,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/Man.png"),
                          fit: BoxFit.cover)),
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
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 250,
                            width: 155,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage("images/red.png"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Container(
                            height: 250,
                            width: 155,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage("images/multi.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            height: 100,
                            width: 155,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage("images/2last.png"),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage("images/white.png"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          height: 250,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage("images/blue.png"),
                                  fit: BoxFit.cover)),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("images/filter.png"),
                              backgroundColor:
                                  Color.fromARGB(255, 241, 194, 53),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage("images/Last.png"),
                              )),
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
