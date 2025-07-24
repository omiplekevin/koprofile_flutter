import 'package:flutter/material.dart';
import 'package:koprofile_flutter/viewmodel/WorkViewModel.dart';
import 'package:provider/provider.dart';

import 'view/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => WorkViewModel()..fetchWorkHistory(),
        ),
      ],
      child: SafeArea(
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
      ),
    );
  }
}
