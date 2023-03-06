import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constant/Constant.dart';

import 'Login.dart';
//import 'package:table_calendar/table_calendar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();

  final TextEditingController _date = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool loading = false;
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
            child: InkWell(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (((context) => LogIn()))));
              }),
              child: Icon(
                Icons.check,
                size: 40,
                color: Colors.black,
              ),
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
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFromField(
                    controller: emailController,
                    obscureText: false,
                    hintText: "Email",
                    keyboard: TextInputType.emailAddress,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            TextFromField(
              controller: passwordController,
              obscureText: true,
              hintText: "Password",
              keyboard: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 26,
            ),
            TextFromField(
              controller: passwordController,
              obscureText: true,
              hintText: "Re-Type Password",
              keyboard: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 26,
            ),
            // Date(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  controller: _date,
                  decoration: InputDecoration(hintText: "Select DOB"),
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1970),
                        lastDate: DateTime(2024));

                    if (pickeddate != null) {
                      setState(() {
                        _date.text =
                            DateFormat("dd-MM-yyyy").format(pickeddate);
                      });
                    }
                  }),
            ),
            SizedBox(
              height: 26,
            ),
            TextFromField(
              controller: zipCodeController,
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
                      if (formKey.currentState!.validate()) {
                        setState(() {
                          loading = true;
                        });
                        _auth
                            .createUserWithEmailAndPassword(
                                email: emailController.text.toString(),
                                password: passwordController.text.toString())
                            // email: "b@b.com",
                            // password: "123456")
                            .then((value) {
                          return ToastMessage().toastmsg("Singup Successfully");
                        }).onError((error, stackTrace) {
                          return ToastMessage().toastmsg(error.toString());
                        });
                      }
                    })))
          ],
        ),
      ),
    );
  }
}

class ToastMessage {
  void toastmsg(String msg) {
    Fluttertoast.showToast(
        msg: "Signup Succesfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Color.fromARGB(255, 208, 164, 160),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
