import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_assignment/Constant/Container1.dart';

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
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/Man.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container2(label: "All"),
                      ),
                      Container2(label: "Hoodies"),
                      Container2(label: "Sweatshirts"),
                      const SizedBox(
                        width: 20,
                      ),
                      Container2(label: "T-Shirts"),
                      Container2(label: "Jumpers"),
                      Container2(label: "Jackets")
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
                                      builder: ((context) => const Choose())));
                            }),
                            child: Container(
                              height: 250,
                              width: ((screenWidth / 2) - 30),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                    image: AssetImage("images/red.png"),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          Container(
                            height: 250,
                            width: ((screenWidth / 2) - 30),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage("images/multi.png"),
                                )),
                          ),
                          Container(
                            height: 250,
                            width: ((screenWidth / 2) - 30),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage("images/yellow.png"),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: ((screenWidth / 2) - 30),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage("images/white.png"),
                              )),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        Container(
                          height: 250,
                          width: ((screenWidth / 2) - 30),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage("images/blue.png"),
                              )),
                        ),
                        Container(
                          height: 250,
                          width: ((screenWidth / 2) - 30),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage("images/black.png"),
                              )),
                        ),
                        const SizedBox(
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
