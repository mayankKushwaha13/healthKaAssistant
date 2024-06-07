import 'package:assistant/constants/colors.dart';
import 'package:assistant/screens/assignPatientsScreen.dart';
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
        backgroundColor: MyColors.Blue,
        body: Stack(
          alignment: Alignment.center,
          children: [
            CircularDesign(height: 200, width: 200, color: MyColors.Navy,opacity: 0.25, x: width/2.5,),
            CircularDesign(height: 100, width: 100, color: MyColors.Background,opacity: 0.5, x: width/2,y: -90,),
            CircularDesign(height: 100, width: 100, color: MyColors.Background,opacity: 0.5, x: -width/2,y: 90,),
            CircularDesign(height: 200, width: 200, color: MyColors.Navy,opacity: 0.25, x: -width/2.5, y: 200,),
            Column(
              children: [
                ClipPath(
                  clipper: BannerType(),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: MyColors.Cold,
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

                SizedBox(height: 30,),
                Center(
                  child: Column(
                    children: [
                      HomeContainers(page: patientProfileScreen(), icon: "medical.png",title: "Patient's List", color: MyColors.Navy,),
                      SizedBox(height: 40,),
                      HomeContainers(page: Assignpatientsscreen(), icon: "patient.png",title: "Assign Patients", color: MyColors.RedDark,),
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

