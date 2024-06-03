import 'package:assistant/constants/colors.dart';
import 'package:assistant/screens/patientProfileScreen.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:assistant/widgets/homeWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.Peach,
        body: Stack(
          alignment: Alignment.center,
          children: [
            CircularDesign(height: 200, width: 200, color: MyColors.DarkPurple,opacity: 0.25, x: width/2.5,),
            CircularDesign(height: 100, width: 100, color: Colors.white,opacity: 0.5, x: width/2,y: -90,),
            Column(
              children: [
                ClipPath(
                  clipper: BannerType(),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: MyColors.LightPurple,
                      border: Border.all()
                    ),
                    child: const Center(
                      child: Image(
                        image: AssetImage("lib/assets/healthka.png"),
                        height: 60,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      HomeContainers(page: patientProfileScreen(), icon: "medical.png",title: "Patient's List", color: MyColors.DarkPurple,),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

