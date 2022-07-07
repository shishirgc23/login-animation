import 'package:flutter/material.dart';
import 'package:newpro/secondpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Portfolio",
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              titleTextStyle: GoogleFonts.pacifico(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          fontFamily: "pacifico",
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          )),
      home: const HomePage(),
    );
  }
}

