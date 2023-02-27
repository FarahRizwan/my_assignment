import 'package:flutter/material.dart';
import 'package:my_assignment/Final/Date.dart';
import 'package:my_assignment/Final/Man.dart';
import 'package:my_assignment/Final/Register.dart';
import 'package:my_assignment/Final/ShopMan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ShopMan());
  }
}