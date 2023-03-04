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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.check,
              size: 40,
              color: Colors.black,
            ),
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
                TextFromField(
                  obscureText: false,
                  hintText: "Email",
                  keyboard: TextInputType.emailAddress,
                ),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            TextFromField(
              obscureText: true,
              hintText: "Password",
              keyboard: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 26,
            ),
            TextFromField(
              obscureText: true,
              hintText: "Re-Type Password",
              keyboard: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 26,
            ),
            Date(),
            SizedBox(
              height: 26,
            ),
            TextFromField(
              obscureText: false,
              hintText: "Zip Code",
              keyboard: TextInputType.number,
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: MyButton(
                  label: "Register",
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogIn(),
                        ));
                  })),
            )
          ],
        ),
      ),
    );
  }
}
