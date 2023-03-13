// ignore: file_names
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const MyButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 241, 238, 204),
            offset: Offset(
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

class TextForm extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final hintText;
  // ignore: prefer_typing_uninitialized_variables

  final obscureText;
  final controller;
  final validator;
  var KeyboardType;

  TextForm(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.controller,
      required keyboardType,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          keyboardType: KeyboardType,
          obscureText: obscureText,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(hintText: hintText),
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

class Container2 extends StatelessWidget {
  const Container2({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 80,
      child: Text(
        label,
        style: GoogleFonts.robotoCondensed(
          textStyle: const TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
    );
  }
}


// class row extends StatelessWidget {
//   const row({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           Container(
//             height: 18,
//             width: 20,
//             child: Text(
//               "All",
//               style: GoogleFonts.robotoCondensed(
//                   textStyle: TextStyle(color: Colors.black, fontSize: 15),
//                   decoration: TextDecoration.underline,
//                   decorationThickness: 7.0,
//                   color: Colors.amber),
//             ),
//           ),
//           SizedBox(
//             width: 30,
//           ),
//           Container(
//             height: 18,
//             width: 70,
//             child: Text(
//               "Hoodies",
//               style: GoogleFonts.robotoCondensed(
//                   textStyle: TextStyle(color: Colors.black, fontSize: 15)),
//             ),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           Container(
//             height: 18,
//             width: 84,
//             child: Text(
//               "Sweatshirts",
//               style: GoogleFonts.robotoCondensed(
//                   textStyle: TextStyle(color: Colors.black, fontSize: 15)),
//             ),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           Container(
//             height: 18,
//             width: 70,
//             child: Text(
//               "T-Shirts",
//               style: GoogleFonts.robotoCondensed(
//                   textStyle: TextStyle(color: Colors.black, fontSize: 15)),
//             ),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           Container(
//             height: 18,
//             width: 60,
//             child: Text(
//               "Jumpers",
//               style: GoogleFonts.robotoCondensed(
//                   textStyle: TextStyle(color: Colors.black, fontSize: 15)),
//             ),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Container(
//             height: 18,
//             width: 50,
//             child: Text(
//               "Jackets",
//               style: GoogleFonts.robotoCondensed(
//                 textStyle: TextStyle(color: Colors.black, fontSize: 15),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
