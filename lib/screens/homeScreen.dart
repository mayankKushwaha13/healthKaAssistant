import 'package:assistant/screens/appointmentScreen.dart';
import 'package:assistant/screens/patient_list.dart';
import 'package:assistant/useEverywhere/clinic.dart';
import 'package:assistant/useEverywhere/colors.dart';
import 'package:assistant/screens/patientListScreen.dart';
import 'package:assistant/screens/assignPatientsScreen.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:assistant/widgets/drawer_widget.dart';
import 'package:assistant/widgets/homeWidgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        drawer: DrawerWidget(),
        backgroundColor: MyColors.Blue,
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularDesign(
                height: 200,
                width: 200,
                color: MyColors.Navy,
                opacity: 0.25,
                x: width / 2.5,
              ),
              CircularDesign(
                height: 100,
                width: 100,
                color: MyColors.Background,
                opacity: 0.5,
                x: width / 2,
                y: -90,
              ),
              CircularDesign(
                height: 100,
                width: 100,
                color: MyColors.Background,
                opacity: 0.5,
                x: -width / 2,
                y: 90,
              ),
              CircularDesign(
                height: 200,
                width: 200,
                color: MyColors.Navy,
                opacity: 0.25,
                x: -width / 2.5,
                y: 200,
              ),
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipPath(
                        clipper: BannerType(),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: MyColors.BackgroundHealthka, border: Border.all()),
                          child: Center(
                            child: Image(
                              image: AssetImage("lib/assets/healthka.png"),
                              height: 60,
                            ),
                          ),
                        ),
                      ),
                      DrawerIcon(width: width),
                    ],
                  ),
                  Center(
                    child: Column(
                      children: [
                        HomeContainers(
                          page: PatientListScreen(),
                          icon: "medical.png",
                          title: "Patient's List\nBy Visits",
                          color: MyColors.Navy,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        HomeContainers(
                          page: PatientList(), 
                          icon: "list.png", 
                          title: "Unique Patient's\nList",
                          color: MyColors.RedDark,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        HomeContainers(
                          page: Assignpatientsscreen(),
                          icon: "patient.png",
                          title: "Assign Patients",
                          color: MyColors.Navy,
                        ),
                        SizedBox(height: 20,),
                        
                        HomeContainers(
                          page: AppointmentScreen(), 
                          icon: "appointment.png", 
                          title: "Today's Appointments\n${clinic.appt}",
                          color: MyColors.RedDark,
                      ),
                      SizedBox(height: 20,)
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

