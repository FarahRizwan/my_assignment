import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const MyButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 241, 238, 204),
            offset: const Offset(
              0.0,
              5.0,
            ),
            blurRadius: 3.0,
            spreadRadius: 1.0,
          ), //BoxShadow
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Color.fromARGB(255, 255, 202, 65)),
        onPressed: onPressed,
        child: Text(
          label,
          style: GoogleFonts.bebasNeue(
              textStyle: TextStyle(fontSize: 24, color: Colors.black)),
        ),
      ),
    );
  }
}

class TextFromField extends StatelessWidget {
  final hintText;
  final keyboard;
  final obscureText;

  TextFromField({
    super.key,
    required this.hintText,
    required this.keyboard,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          keyboardType: keyboard,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}

class Containers extends StatelessWidget {
  final Image;
  const Containers({required this.Image});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: 155,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: Image,
          ),
        ));
  }
}

class row extends StatelessWidget {
  const row({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 18,
            width: 20,
            child: Text(
              "All",
              style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: TextDecoration.underline,
                  decorationThickness: 7.0,
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
                  textStyle: TextStyle(color: Colors.black, fontSize: 15)),
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
                  textStyle: TextStyle(color: Colors.black, fontSize: 15)),
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
                  textStyle: TextStyle(color: Colors.black, fontSize: 15)),
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
                  textStyle: TextStyle(color: Colors.black, fontSize: 15)),
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
                textStyle: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
