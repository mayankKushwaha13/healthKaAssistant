
import 'package:assistant/constants/colors.dart';
import 'package:assistant/screens/homeScreen.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.Peach,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularDesign(height: 400, width: 400, opacity: 0.45, x: -width/2, y: -height/2,),
              CircularDesign(height: 360, width: 360, opacity: 0.4, x: width/2, y: height/2,),
              CircularDesign(height: 200, width: 200, opacity: 0.25, y: height/2,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("lib/assets/healthka.png"),
                  height: 80,
                  ),
              
                  Container(
                    child: Text(
                      "Aap ke health ke liye healthka :)",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                      ),
                    ),
                  ),
              
                  const SizedBox(height: 40,),
              
                  MyTextField(controller: username, hint: "Enter Username",),
                  const SizedBox(height: 20,),
                  MyTextField(controller: password, hint: "Enter Password", obscure: true,),
              
                  const SizedBox(height: 40,),
              
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Ink(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: MyColors.DarkPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> patientProfileScreen()));
                          Get.to(HomeScreen(), transition: Transition.rightToLeftWithFade);
                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Login",
                            style: GoogleFonts.lato(
                              color: MyColors.Background,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                        ),
                      ),
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

