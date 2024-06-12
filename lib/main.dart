import 'package:flutter/material.dart';
import 'package:patient_list/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 230, 230, 1),

        body: SplashScreen(),
      ),
    );
  }
}

