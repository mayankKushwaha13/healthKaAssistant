import 'package:assistant/screens/assistantProfileScreen.dart';
import 'package:assistant/screens/homeScreen.dart';
import 'package:assistant/screens/servicesScreen.dart';
import 'package:assistant/useEverywhere/clinic.dart';
import 'package:assistant/useEverywhere/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String clinicDropDown = "Clinic 1";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: const Color.fromRGBO(173, 136, 198, 1),
      backgroundColor: MyColors.Navy,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                color: MyColors.BackgroundHealthka,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 80.0, right: 20, left: 20, bottom: 40),
                  child: Image(
                    image: AssetImage("lib/assets/healthka.png"),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: MyColors.Background,
                ),
                title: Text(
                  "Home",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyColors.Background,
                  ),
                ),
                onTap: () {
                  // Handle the navigation
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context)=> HomeScreen()), (route) => route.isCurrent,
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: MyColors.Background,
                ),
                title: Text(
                  "Profile",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyColors.Background,
                  ),
                ),
                onTap: () {
                  // Handle the navigation
                  Get.to(() =>AssistantProfileScreen());
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.medical_services,
                  color: MyColors.Background,
                ),
                title: Text(
                  "Services",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyColors.Background,
                  ),
                ),
                onTap: () {
                  // Handle the navigation
                  Get.to(() => ServicesScreen(), transition: Transition.fadeIn);
                },
              ),
              ListTile(
                leading: Icon(CupertinoIcons.circle_fill, color: Colors.green,),
                title: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: MyColors.Navy,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: DropdownButton(
                          icon: Icon(Icons.arrow_drop_down_circle_outlined, ),
                          borderRadius: BorderRadius.circular(12),
                          isExpanded: true,
                          iconEnabledColor: MyColors.Background,
                            underline: Container(
                              color: MyColors.Navy,
                              height: 2,
                            ),
                            value: clinicDropDown,
                            focusColor: Colors.white,
                            dropdownColor: MyColors.Navy,
                            style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                            ),
                            items: [
                              DropdownMenuItem(
                                  value: "Clinic 1", child: Text("Clinic 1")),
                              DropdownMenuItem(value: "Clinic 2", child: Text("Clinic 2")),
                              DropdownMenuItem(value: "Clinic 3", child: Text("Clinic 3")),
                              DropdownMenuItem(value: "Clinic 4", child: Text("Clinic 4")),
                            ],
                            onChanged: (String? newValue) {
                              setState(() {
                                clinicDropDown = newValue!;
                                clinic.clinicName = clinicDropDown;
                                clinic.update();
                              });
                            }),
                      ),
              )
            ],
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: MyColors.Background,
            ),
            title: Text(
              "Logout",
              style: GoogleFonts.aBeeZee(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: MyColors.Background,
              ),
            ),
            onTap: () {
              // Handle the logout
            },
          ),
        ],
      ),
    );
  }
}
