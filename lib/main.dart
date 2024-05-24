import 'package:cco_helper_v2/home_page.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CCO Helper',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(40, 40, 40, 1),
        splashFactory: NoSplash.splashFactory,
        fontFamily: "GenSenRounded",
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}