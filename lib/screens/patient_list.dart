import 'package:assistant/useEverywhere/colors.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:assistant/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/patient.dart';
import 'patient_profile.dart';

class PatientList extends StatefulWidget {
  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  final List<Patient> patients = [
    Patient(
        name: 'Mr ABC',
        phoneNumber: '123456789',
        firstVisitDate: '01-01-2024',
        gender: 'Male'),
    Patient(
        name: 'Mr DEF',
        phoneNumber: '123456789',
        firstVisitDate: '01-01-2024',
        gender: 'Male'),
    Patient(
        name: 'Mr GHI',
        phoneNumber: '123456789',
        firstVisitDate: '01-01-2024',
        gender: 'Male'),
    Patient(
        name: 'Mr JKL',
        phoneNumber: '123456789',
        firstVisitDate: '01-01-2024',
        gender: 'Male'),
    Patient(
        name: 'Mr MNO',
        phoneNumber: '123456789',
        firstVisitDate: '01-01-2024',
        gender: 'Male'),
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
              Stack(
                alignment: Alignment.center,
                children: [
                  MyAppBar(title: "Unique Patients"),
                  DrawerIcon(
                    width: width,
                    color: MyColors.Background,
                  )
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
                          fillColor: MyColors.Background,
                          filled: true,
                          focusColor: Colors.purple,
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
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColors.RedDark,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: MyColors.Background,
                        ),
                        onPressed: () {
                          // Handle the search action
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColors.Navy,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.person,
                          color: MyColors.Background,
                        ),
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
                      .map((patient) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PatientProfile()),
                              );
                            },
                            child: Card(
                              color: MyColors.Navy,
                              elevation: 4,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: ListTile(
                                contentPadding: EdgeInsets.all(15),
                                title: Text(patient.name,
                                    style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber,
                                        fontSize: 18)),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Phone: ${patient.phoneNumber}',
                                      style: GoogleFonts.aBeeZee(
                                          color: MyColors.Gold, fontSize: 16),
                                    ),
                                    Text(
                                      'First Visit: ${patient.firstVisitDate}',
                                      style: GoogleFonts.aBeeZee(
                                          color: MyColors.Gold, fontSize: 16),
                                    ),
                                    Text(
                                      'Gender: ${patient.gender}',
                                      style: GoogleFonts.aBeeZee(
                                          color: MyColors.Gold, fontSize: 16),
                                    ),
                                  ],
                                ),
                                trailing: Icon(Icons.arrow_forward_ios,
                                    color: Colors.purple[800]),
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
