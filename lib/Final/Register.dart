import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_assignment/Final/Date.dart';

import '../../Constant/Constant.dart';
import 'Login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final zipCodeController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final _date = TextEditingController();
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
            child: Column(children: [
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
            child: Column(children: [
              TextForm(
                hintText: "Email",
                obscureText: false,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter your Email";
                  }
                  return null;
                },
              ),

              SizedBox(
                height: 26,
              ),
              TextForm(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter your Password";
                  }
                  return null;
                },
                hintText: "Password",
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 26,
              ),
              TextForm(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter your Password";
                  }
                  return null;
                },
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                hintText: "Re-type Password",
              ),
              SizedBox(
                height: 26,
              ),
              // Date(),
              Date(),
              SizedBox(
                height: 26,
              ),
              TextForm(
                controller: zipCodeController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter your Zip Code";
                  }
                  return null;
                },
                obscureText: false,
                hintText: "Zip Code",
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: MyButton(
                      label: "Register",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          setState(() {
                            loading = true;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (((context) => const LogIn()))));

                          _auth
                              .createUserWithEmailAndPassword(
                                  email: emailController.text.toString(),
                                  password: passwordController.text.toString())
                              // email: "b@b.com",
                              // password: "123456"
                              .then((value) {
                            return ToastMessage()
                                .toastmsg("Singup Successfully");
                          }).onError((error, stackTrace) {
                            return ToastMessage().toastmsg(error.toString());
                          });
                        }
                      })),
            ]),
          ),
        ])));
  }
}

class ToastMessage {
  void toastmsg(String msg) {
    Fluttertoast.showToast(
        msg: "Signup Succesfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color.fromARGB(255, 255, 202, 65),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
