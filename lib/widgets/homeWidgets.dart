import 'package:assistant/useEverywhere/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeContainers extends StatelessWidget {
  const HomeContainers({
    super.key,
    required this.page,
    required this.icon,
    required this.title,
    this.color = MyColors.Background,
    this.textColor = MyColors.Background,
  });
  final Widget page;
  final String icon;
  final String title;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 210,
      width: 210,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(4, 4),
          )
        ]
      ),
    
      child: InkWell(
        onTap: () {
          Get.to(page, transition: Transition.rightToLeft);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image(image: AssetImage("lib/assets/${icon}"), height: 100,),
            ),
            Text("${title}",
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
              fontSize: 20,
              color: textColor,
            )
            )
          ],
        ),
      ),
    );
  }
}