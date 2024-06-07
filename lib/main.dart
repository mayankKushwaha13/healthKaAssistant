import 'package:flutter/material.dart';
import 'drawer_widget.dart';
import 'app_body.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.white70,
        ),
        backgroundColor: const Color.fromRGBO(255, 230, 230, 1),
        drawer: const DrawerWidget(),
        body: PatientList(),
      ),
    );
  }
}
