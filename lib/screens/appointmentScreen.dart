import 'dart:math';

import 'package:assistant/screens/patientProfileScreen.dart';
import 'package:assistant/useEverywhere/colors.dart';
import 'package:assistant/useEverywhere/list.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:assistant/widgets/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  String searchQuery = "";
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerWidget(),
        backgroundColor: MyColors.Blue,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  const MyAppBar(title: "Appointments"),
                  DrawerIcon(
                    width: width,
                    color: MyColors.Background,
                  ),
                  CircularDesign(height: 200, width: 200, x: width/2, opacity: 0.25,y: 200,),
                  CircularDesign(height: 200, width: 200, x: -width/2,y: 400,color: MyColors.RedDark,),
                  CircularDesign(height: 200, width: 200, x: width/2, opacity: 0.25,y: 600,),
                ],
              ),
              RichText(
                text: TextSpan(
                  text: "Today's Appointments : ",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 22, 
                    fontWeight: FontWeight.bold,
                    color: MyColors.Navy
                  ),
                  children: [
                    TextSpan(text: "${6}",style: GoogleFonts.lato(color: MyColors.RedDark)),
                  ]
                )
              ),
              SizedBox(height: 20,),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: MyColors.Background,
                            focusColor: MyColors.Navy,
                            labelText: 'Search patients...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              searchQuery = value.toLowerCase();
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: MyColors.RedDark,
                        ),
                        child: IconButton(
                          icon: const Icon(CupertinoIcons.search, color: MyColors.Cold,),
                          onPressed: () {
                          },
                        ),
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 20,),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: patientList.patients
                        .where((patient) =>
                    patient.name.toLowerCase().contains(searchQuery) ||
                        patient.phoneNumber.contains(searchQuery) ||
                        patient.firstVisitDate.contains(searchQuery) ||
                        patient.gender.toLowerCase().contains(searchQuery))
                        .map((patient) => Card(
                      color: MyColors.Navy,
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(()=> patientProfileScreen());
                        },
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(patient.name,
                                      style:
                                      GoogleFonts.aBeeZee(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber
                                      )
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text("Phone :  ", style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 16, color: MyColors.Gold),),
                                      Text('${patient.phoneNumber}', style: GoogleFonts.lato(fontSize: 16, color: MyColors.Background),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Appointment Type :  ", style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 16,color: MyColors.Gold),),
                                      Text('${patient.type}', style: GoogleFonts.lato(fontSize: 16,color: MyColors.Background),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Gender :  ", style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 16,color: MyColors.Gold),),
                                      Text('${patient.gender}', style: GoogleFonts.lato(fontSize: 16,color: MyColors.Background),),
                                    ],
                                  ),
                                ],
                              ),
                              Image(image: AssetImage(patient.icon),height: 80,)
                            ],
                          ),
                        ),
                      ),
                    ))
                        .toList(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
