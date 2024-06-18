import 'package:assistant/screens/loginScreen.dart';
import 'package:assistant/useEverywhere/colors.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

import 'dart:async';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 3500), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => LoginScreen())); // Replace HomeScreen with your main screen
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.Blue, // Set your background color here
        body: Stack(
          alignment: Alignment.center,
          children: [
            CircularDesign(height: 400, width: 400, opacity: 0.45, x: -width/2, y: -height/2,),
                CircularDesign(height: 360, width: 360, opacity: 0.4, x: width/2, y: height/2,),
                CircularDesign(height: 200, width: 200, opacity: 0.25, y: height/2,),
                CircularDesign(height: 200, width: 200, opacity: 0.25, y: -height/2,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Image.asset('lib/assets/healthka.png',width: 260,),
                SizedBox(height: 20,),
                Image.asset('lib/assets/loading.gif', height: 100,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}