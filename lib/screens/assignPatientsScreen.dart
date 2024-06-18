import 'package:assistant/useEverywhere/colors.dart';
import 'package:assistant/widgets/assignPatientsWidget.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:assistant/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assignpatientsscreen extends StatefulWidget {
  Assignpatientsscreen({super.key});

  @override
  State<Assignpatientsscreen> createState() => _AssignpatientsscreenState();
}

class _AssignpatientsscreenState extends State<Assignpatientsscreen> {
  final patName = TextEditingController();

  final phNum = TextEditingController();

  final patID = TextEditingController();

  final age = TextEditingController();

  final docID = TextEditingController();

  TimeOfDay selectedtime = TimeOfDay.now();

  DateTime selecteddate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String genderDropDown = "F";
    String appointmentDropDown = "New";
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.Blue,
        drawer: DrawerWidget(),
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const MyAppBar(title: "Assign Patients"),
                      DrawerIcon(width:width, color: MyColors.Background,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Appointment ID : ",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "237002",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: MyColors.RedDark),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AssignTextField(
                    controller: patName,
                    title: "Patient's Name",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AssignTextField(controller: phNum, title: "Phone No. "),
                  const SizedBox(
                    height: 20,
                  ),
                  AssignTextField(controller: patID, title: "Patient's ID"),
                  const SizedBox(
                    height: 20,
                  ),
                  AssignTextField(controller: age, title: "Patient's Age"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Select Patient's Gender : ",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: MyColors.Navy,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: DropdownButton(
                            underline: Container(
                              color: MyColors.Navy,
                              height: 2,
                            ),
                            value: genderDropDown,
                            focusColor: Colors.white,
                            dropdownColor: MyColors.Navy,
                            style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                            ),
                            items: [
                              DropdownMenuItem(
                                  value: "F", child: Text("Female")),
                              DropdownMenuItem(value: "M", child: Text("Male")),
                            ],
                            onChanged: (String? newValue) {
                              setState(() {
                                genderDropDown = newValue!;
                              });
                            }),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Appointment Type : ",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: MyColors.Navy,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: DropdownButton(
                            underline: Container(
                              color: MyColors.Navy,
                              height: 2,
                            ),
                            value: appointmentDropDown,
                            focusColor: Colors.white,
                            dropdownColor: MyColors.Navy,
                            style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                            ),
                            items: [
                              DropdownMenuItem(
                                  value: "New", child: Text("New")),
                              DropdownMenuItem(
                                  value: "FollowUp", child: Text("Follow Up")),
                            ],
                            onChanged: (String? newValue) {
                              setState(() {
                                appointmentDropDown = newValue!;
                              });
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Appointment Time : ",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: MyColors.Pink,
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        "${selectedtime.hour}:${selectedtime.minute}",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Ink(
                      decoration: BoxDecoration(
                        color: MyColors.Navy,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () async {
                          final TimeOfDay? timeOfDay = await showTimePicker(
                              context: context,
                              initialTime: selectedtime,
                              initialEntryMode: TimePickerEntryMode.dial);
                          if (timeOfDay != null) {
                            setState(() {
                              selectedtime = timeOfDay;
                            });
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Pick Time",
                            style: GoogleFonts.aBeeZee(
                                color: MyColors.Background, fontSize: 18),
                          ),
                        ),
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Appointment Date : ",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: MyColors.Pink,
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        "${selecteddate.day}/${selecteddate.month}/${selecteddate.year}",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Ink(
                      decoration: BoxDecoration(
                        color: MyColors.Navy,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () async {
                          final DateTime? dateTime = await showDatePicker(
                              context: context,
                              initialDate: selecteddate,
                              firstDate: DateTime(2024),
                              lastDate: DateTime(3000));
                          if (dateTime != null) {
                            setState(() {
                              selecteddate = dateTime;
                            });
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Pick Date",
                            style: GoogleFonts.aBeeZee(
                                color: MyColors.Background, fontSize: 14),
                          ),
                        ),
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  AssignTextField(controller: docID, title: "Doctor ID"),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Ink(
                        width: 100,
                        decoration: BoxDecoration(
                          color: MyColors.Navy,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(
                              child: Text(
                                "Save",
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.Background,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Ink(
                        width: 100,
                        decoration: BoxDecoration(
                          color: MyColors.RedDark,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(
                              child: Text(
                                "Bill",
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.Background,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
