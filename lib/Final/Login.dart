// ignore_for_file: import_of_legacy_library_into_null_safe, deprecated_member_use

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../Constant/Constant.dart';
import 'ShopMan.dart';

//import 'package:firebase_auth/firebase_auth.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 17, top: 70),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: const Image(
                          image: AssetImage("images/cross2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/login.png"))),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 78, left: 20),
                child: Text(
                  "EXISTING CUSTOMER",
                  style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: 350,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: 350,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Center(
                child: Text(
              "Forgot Password?",
              style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 163, 156, 156),
                      fontSize: 20,
                      decoration: TextDecoration.underline)),
            )),
            const SizedBox(
              height: 25,
            ),
            MyButton(
                label: "LOG IN",
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ShopMan()));
                })),
            const SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "NEW CUSTOMER",
                  style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            MyButton(label: "CONTINUE", onPressed: (() {}))
          ],
        ));
  }
}
