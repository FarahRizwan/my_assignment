import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assignment/Final/Carousal.dart';

class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  bool fsd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 100),
              child: Text(
                "CHOOSE BRANDS",
                style: GoogleFonts.bebasNeue(
                    textStyle: TextStyle(fontSize: 22, color: Colors.black)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(children: [
            Row(
              children: [
                Checkbox(
                    value: fsd,
                    onChanged: (((value) {
                      setState(() {
                        fsd = value!;
                      });
                    }))),
                const Text("All"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: fsd,
                    onChanged: (((value) {
                      setState(() {
                        fsd = value!;
                      });
                    }))),
                const Text("Zara"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: fsd,
                    onChanged: (((value) {
                      setState(() {
                        fsd = value!;
                      });
                    }))),
                const Text("Gucci"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: fsd,
                    onChanged: (((value) {
                      setState(() {
                        fsd = value!;
                      });
                    }))),
                const Text("Nike"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: fsd,
                    onChanged: (((value) {
                      setState(() {
                        fsd = value!;
                      });
                    }))),
                const Text("Bape"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: fsd,
                    onChanged: (((value) {
                      setState(() {
                        fsd = value!;
                      });
                    }))),
                const Text("Supereme"),
              ],
            ),
          ]),
          SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "PRICE RANGE",
                style: GoogleFonts.bebasNeue(
                    textStyle: TextStyle(fontSize: 22, color: Colors.black)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Rs 30",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ),
              Text("Rs. 500",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(fontSize: 18, color: Colors.black)))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
            child: Divider(
              thickness: 6,
              color: Colors.amber,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("SIZE",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(fontSize: 22, color: Colors.black))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("XL",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(fontSize: 25, color: Colors.black))),
              Text("L",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(fontSize: 25, color: Colors.black))),
              Text("M",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(fontSize: 25, color: Colors.black))),
              Text("S",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(fontSize: 25, color: Colors.black))),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("COLOR",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(fontSize: 22, color: Colors.black))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (((context) => Carousal()))));
                }),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                ),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.blue,
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.black,
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green,
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.purple,
              ),
            ],
          )
        ],
      ),
    );
  }
}
