import 'package:assistant/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AssignTextField extends StatelessWidget {
  const AssignTextField({
    super.key,
    required this.controller,
    required this.title,
  });

  final TextEditingController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${title} : ",
            style: GoogleFonts.aBeeZee(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Flexible(
            child: TextField(
              style: GoogleFonts.lato(
                fontSize: 18,
                color: MyColors.Background,
              ),
              controller: controller,
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
          )
        ],
      ),
    );
  }
}
