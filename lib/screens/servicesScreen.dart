import 'package:assistant/useEverywhere/colors.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:assistant/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final service = TextEditingController();
    return SafeArea(
      child: Scaffold(
        drawer: DrawerWidget(),
        backgroundColor: MyColors.Blue,
        body: Stack(
          alignment: Alignment.center,
          children: [
            CircularDesign(
              height: 400,
              width: 400,
              x: width / 2,
              y: height / 2,
              color: MyColors.RedDark,
              opacity: 0.25,
            ),
            Center(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      MyAppBar(title: "Services"),
                      DrawerIcon(width: width, color: MyColors.Background,)
                    ],
                  ),
                  Text(
                    "Add Service",
                    style: GoogleFonts.aBeeZee(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: MyColors.Navy,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyColors.Background,
                      ),
                      controller: service,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        isCollapsed: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87),
                        ),
                        fillColor: MyColors.Navy,
                        filled: true,
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),

                  Ink(
                    decoration: BoxDecoration(
                      color: MyColors.RedDark,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: InkWell(
                      onTap: () {
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        child: Text("Add",
                        style: GoogleFonts.aBeeZee(
                          color: MyColors.Background,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
