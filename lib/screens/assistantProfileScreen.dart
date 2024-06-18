import 'package:assistant/useEverywhere/colors.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:assistant/widgets/drawer_widget.dart';
import 'package:assistant/widgets/patientWidgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AssistantProfileScreen extends StatelessWidget {
  const AssistantProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      drawer: DrawerWidget(),
      backgroundColor: MyColors.Blue,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              MyAppBar(title: "Assistant Profile Page"),
              DrawerIcon(
                width: width,
                color: MyColors.Background,
              ),
            ],
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
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Assistant's Name",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "ID123456",
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
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                PatientDetails1(
                  width: width,
                  gender: "M",
                  age: 29,
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: width / 2 - 30,
                  height: 240,
                  decoration: BoxDecoration(
                      color: MyColors.Navy,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade800,
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: Offset(4, 4),
                        ),
                        BoxShadow(
                          color: Colors.blue.shade100,
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Phone No. : ",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: MyColors.Background,
                          ),
                        ),
                        Text(
                          "123456890",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 22,
                            color: MyColors.yellowish,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          Container(
            transform: Matrix4.translationValues(0, 90, 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Ink(
                decoration: BoxDecoration(
                  color: MyColors.Navy,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: () {
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Edit", style: GoogleFonts.lato(fontSize: 20, color: MyColors.Gold, fontWeight: FontWeight.bold),),
                        SizedBox(width: 20,),
                        Icon(Icons.edit, color: MyColors.Cold,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
