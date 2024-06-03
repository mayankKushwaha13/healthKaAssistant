import 'package:assistant/constants/colors.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:assistant/widgets/patientWidgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class patientProfileScreen extends StatelessWidget {
  const patientProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    var date = DateTime.now();
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.Background,
        body: Stack(
          alignment: Alignment.center,
          children: [
            CircularDesign(height: 400, width: 400, color: MyColors.BrownPeach,opacity: 0.4, x: width/2,y: height/2,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipPath(
                  clipper: BannerType(),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: MyColors.Brown,
                    ),
                    height: 200,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Patient's Profile",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: MyColors.Background,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage("lib/assets/boy.png"),
                        height: 150,
                      ),
                      const SizedBox(width: 30,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Patient's Really Long Name",
                            style: GoogleFonts.aBeeZee(
                              fontSize: 24,
                            ),
                            ),

                            Text("ID123456",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      PatientDetails1(width: width, gender: "M", date: "${date.day}-${date.month}-${date.year}",),
                      SizedBox(width: 20,),
                      PatientDetails2(width: width, phone: "9876543210", address: "Locality, City",),
                    ],
                  ),
                ),

                Container(
                  transform: Matrix4.translationValues(-width/2 + 20 + width/4 - 15, 30, 0),
                  decoration: BoxDecoration(
                    color: MyColors.yellowish,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                        offset: Offset(4, 4),
                      ),
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 1,
                        color: Colors.white,
                        offset: Offset(-4, -4),
                      ),
                    ]
                  ),
                  height: 170,
                  width: width/2 - 30,

                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Assigned to : ",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text(
                            "Doctor's Name",
                            style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Doctor's ID",
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}



