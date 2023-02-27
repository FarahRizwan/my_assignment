import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constant/Constant.dart';

class ManShop extends StatefulWidget {
  const ManShop({super.key});

  @override
  State<ManShop> createState() => _ManShopState();
}

class _ManShopState extends State<ManShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.person,
              size: 50,
              color: Colors.black,
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/Man.png"))),
            ),
            row(),
            Row(
              children: [
                Containers(
                  Image: const AssetImage("images/red.png"),
                ),
              ],
            ),
            Containers(
              Image: const AssetImage("images/white.png"),
            ),
            Containers(Image: const AssetImage("images/blue.png")),
            Column(
              children: [
                Containers(
                  Image: const AssetImage("images/multi.png"),
                ),
                Containers(
                  Image: const AssetImage("images/2last.png"),
                ),
                Containers(
                  Image: const AssetImage("images/Last.png"),
                ),
              ],
            )
          ],
        ));
  }
}
