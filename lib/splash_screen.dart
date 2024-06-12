import 'package:flutter/material.dart';
import 'package:patient_list/app_body.dart';

import 'dart:async';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => PatientList())); // Replace HomeScreen with your main screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your background color here
      body: Center(
        child: Image.asset('hk-logo.51b5e3f9550191203afb.png'), // Set your logo asset here
      ),
    );
  }
}
