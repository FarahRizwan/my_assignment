// ignore_for_file: import_of_legacy_library_into_null_safe, deprecated_member_use

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../Constant/Constant.dart';
import 'ShopMan.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:fluttertoast/fluttertoast.dart';

//import 'package:firebase_auth/firebase_auth.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17, top: 70),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 55,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Container(
                            height: 80,
                            width: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/login.png"))),
                          ),
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
              SizedBox(
                height: 25,
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
                height: 25,
              ),
              TextFromField(
                controller: passwordController,
                obscureText: true,
                hintText: "Password",
                keyboard: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 22,
              ),
              // Center(
              //     child: Text(
              //   "Forgot Password?",
              //   style: GoogleFonts.bebasNeue(
              //       textStyle: const TextStyle(
              //           color: Color.fromARGB(255, 163, 156, 156),
              //           fontSize: 20,
              //           decoration: TextDecoration.underline)),
              // )),
              SizedBox(
                height: 25,
              ),
              MyButton(
                  label: "LOG IN",
                  onPressed: (() {
                    if (formKey.currentState!.validate()) {
                      setState(() {
                        loading = true;
                      });
                      _auth
                          .signInWithEmailAndPassword(
                              email: emailController.text.toString(),
                              password: passwordController.text.toString())
                          .then((value) {
                        return ToastMessage().toastmsg("Login Successfully");
                      }).onError((error, stackTrace) {
                        return ToastMessage().toastmsg(error.toString());
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShopMan()));
                    }
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
          ),
        ));
  }
}

class ToastMessage {
  void toastmsg(String msg) {
    Fluttertoast.showToast(
        msg: "Login Succesfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Color.fromARGB(255, 253, 237, 21),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
// try {
//                         print("Hello");
// _auth
//                             .signInWithEmailAndPassword(
//                                 email: "a@a.com", password: "123456")
//                             .then((value) {
//                           setState(() {
//                             loading = false;
//                             print(value);
//                           });
//                           print(_auth);
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const ShopMan()));
//                           return ToastMessage().toastmsg("Login Successfully");
//                         }).onError((error, stackTrace) {
//                           setState(() {
//                             loading = false;
//                           });
//                           return ToastMessage().toastmsg(error.toString());
//                         });
//                       } on FirebaseAuthException catch (e) {
//                         if (e.code == 'weak-password') {
//                           print('The password provided is too weak.');
//                         } else if (e.code == 'email-already-in-use') {
//                           print('The account already exists for that email.');
//                         }
//                       } catch (e) {
//                         print("e");
//                       }