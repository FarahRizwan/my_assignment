import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 320),
      child: Container(
        height: 150,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: AssetImage("images/red2.png"))),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.shopping_basket,
                      color: Colors.black,
                      size: 35,
                    ),
                  )
                ],
              )
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    color: Colors.pink,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
