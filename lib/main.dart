import 'package:flutter/material.dart';

import 'views/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'UbuntuFontFamily',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 104, 164, 221),
          ),
        ),
        home: const HomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
