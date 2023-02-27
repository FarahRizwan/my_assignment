import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../Constant/Constant.dart';

import 'Date.dart';
import 'Login.dart';
//import 'package:table_calendar/table_calendar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 40,
        ),
        actions: [
          Icon(
            Icons.check,
            size: 40,
            color: Colors.black,
          )
        ],
        title: Containers(Image: AssetImage("images/Title-Small.png")),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "CREATE ACCOUNT",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Column(
              children: [
                TextFromField(hintText: "Email"),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            TextFromField(hintText: "Password"),
            SizedBox(
              height: 26,
            ),
            TextFromField(hintText: "Re-Type Password"),
            SizedBox(
              height: 26,
            ),
            Date(),
            SizedBox(
              height: 26,
            ),
            TextFromField(hintText: "Zip Code"),
            SizedBox(
              height: 26,
            ),
            MyButton(
                label: "Register",
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogIn(),
                      ));
                }))
          ],
        ),
      ),
    );
  }
}
