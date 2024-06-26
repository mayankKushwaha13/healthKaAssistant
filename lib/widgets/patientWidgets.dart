import 'package:assistant/useEverywhere/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientDetails1 extends StatelessWidget {
  PatientDetails1({
    super.key,
    required this.width,
    this.color = MyColors.RedDark,
    this.age = 18,
    required this.gender,
  });

  final double width;
  final Color color;
  final int age;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width/2 - 30,
      height: 240,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(4, 4),
          ),
          BoxShadow(
            color: Colors.blue.shade100,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(-4, -4),
          )
        ]
      ),

      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Age : ",
                style: GoogleFonts.aBeeZee(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: MyColors.Background,
                ),
                ),
                Text("${age}",
                style: GoogleFonts.aBeeZee(
                  fontSize: 22,
                  color: MyColors.yellowish,
                ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Gender : ",
                style: GoogleFonts.aBeeZee(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: MyColors.Background,
                ),
                ),
                Text("${gender}",
                style: GoogleFonts.aBeeZee(
                  fontSize: 22,
                  color: MyColors.yellowish,
                ),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

class PatientDetails2 extends StatelessWidget {
  PatientDetails2({
    super.key,
    required this.width,
    this.color = MyColors.Navy,
    required this.phone,
    required this.address,
    required this.date,
  });

  final double width;
  final Color color;
  final String phone;
  final String address;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width/2 - 30,
      height: 240,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(4, 4),
          ),
          BoxShadow(
            color: Colors.blue.shade100,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(-4, -4),
          )
        ]
      ),

      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Phone : ",
              style: GoogleFonts.aBeeZee(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: MyColors.Background,
              ),
              ),
              Text("${phone}",
              style: GoogleFonts.aBeeZee(
                fontSize: 22,
                color: MyColors.Peach
              ),
              ),
          
              SizedBox(height: 20,),
          
              // Text("Address : ",
              // style: GoogleFonts.aBeeZee(
              //   fontSize: 22,
              //   fontWeight: FontWeight.bold,
              //   color: MyColors.Background,
              // ),
              // ),
              // Text("${address}",
              // style: GoogleFonts.aBeeZee(
              //   fontSize: 22,
              //   color: MyColors.Peach
              // ),
              // ),

            const SizedBox(height: 10,),
            Text("Last Visit :",
            style: GoogleFonts.aBeeZee(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: MyColors.Background,
            ),
            ),
            Text(
              "${date}",
              style: GoogleFonts.aBeeZee(
                fontSize: 22,
                color: MyColors.yellowish,
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}