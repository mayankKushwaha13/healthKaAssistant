import 'package:assistant/useEverywhere/colors.dart';
import 'package:assistant/screens/patientProfileScreen.dart';
import 'package:assistant/useEverywhere/list.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:assistant/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



class PatientListScreen extends StatefulWidget {
  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientListScreen> {
  final List<Patient> patients = [
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',),
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',),
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',),
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',),
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',),
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',),
  ];

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        drawer: DrawerWidget(),
        backgroundColor: MyColors.Blue,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //       child: Text('Welcome, Dr.Soumyajit', style: TextStyle(color: Colors.purple[800],fontSize: 24, fontWeight: FontWeight.bold)),
              //     ),
              //   ],
              // ),
              Stack(
                alignment: Alignment.center,
                children: [
                  MyAppBar(title: "Patient's List"),
                  DrawerIcon(width: width, color: MyColors.Background,)
                ],
              ),
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
                        icon: const Icon(Icons.search, color: MyColors.Cold,),
                        onPressed: () {
                          // Handle the search action
                        },
                      ),
                    ),
                    const SizedBox(width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColors.Navy,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.person, color: MyColors.Background,),
                        onPressed: () {
                          // Handle the search action
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: patients
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
                                    Text("First Visit :  ", style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 16,color: MyColors.Gold),),
                                    Text('${patient.firstVisitDate}', style: GoogleFonts.lato(fontSize: 16,color: MyColors.Background),),
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