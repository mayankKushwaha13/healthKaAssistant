import 'package:assistant/useEverywhere/colors.dart';
import 'package:assistant/widgets/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.Blue,
        // appBar: AppBar(
        //   backgroundColor:Colors.deepPurple[200] ,

        //   title: Text("Patient Profile",
        //     style: TextStyle(fontSize: 18),),
        // ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: [
                  const MyAppBar(title: "Unique Patients"),
                  Container(
                    transform:
                        Matrix4.translationValues(-width / 2 + 30, -60, 0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: MyColors.Background,
                        )),
                  )
                ],
              ),
              const Center(
                child: Icon(
                  Icons.person,
                  size: 100,
                  color: MyColors.Navy,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  color: MyColors.Navy,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: RichText(
                                    text: TextSpan(
                                        style: GoogleFonts.aBeeZee(
                                            color: MyColors.Gold),
                                        children: [
                                  TextSpan(
                                    text: "Name : ",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.amber,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "Mr ABC",
                                  )
                                ]))),
                            Expanded(
                              child: RichText(
                                    text: TextSpan(
                                        style: GoogleFonts.aBeeZee(
                                            color: MyColors.Gold),
                                        children: [
                                  TextSpan(
                                    text: "Age : ",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.amber,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "30",
                                  )
                                ])),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: RichText(
                                    text: TextSpan(
                                        style: GoogleFonts.aBeeZee(
                                            color: MyColors.Gold),
                                        children: [
                                  TextSpan(
                                    text: "Gender : ",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.amber,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "Male",
                                  )
                                ]))),
                            Expanded(
                                child: RichText(
                                    text: TextSpan(
                                        style: GoogleFonts.aBeeZee(
                                            color: MyColors.Gold),
                                        children: [
                                  TextSpan(
                                    text: "Mobile No : ",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.amber,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "1234567890",
                                  )
                                ]))),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: RichText(
                                    text: TextSpan(
                                        style: GoogleFonts.aBeeZee(
                                            color: MyColors.Gold),
                                        children: [
                                  TextSpan(
                                    text: "Address : ",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.amber,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "IIT Guwahati, Assam",
                                  )
                                ]))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: MyColors.RedDark,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    ' Last Visit Vitals',
                    style: TextStyle(
                        fontSize: 18,
                        color: MyColors.Background,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  color: MyColors.Navy,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: RichText(
                                    text: TextSpan(
                                        style: GoogleFonts.aBeeZee(
                                            color: MyColors.Gold),
                                        children: [
                                  TextSpan(
                                    text: "Height : ",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.amber,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "175 cm",
                                  )
                                ]))),
                            Expanded(
                                child: RichText(
                                    text: TextSpan(
                                        style: GoogleFonts.aBeeZee(
                                            color: MyColors.Gold),
                                        children: [
                                  TextSpan(
                                    text: "Weight : ",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.amber,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "70 kg",
                                  )
                                ]))
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: RichText(
                                    text: TextSpan(
                                        style: GoogleFonts.aBeeZee(
                                            color: MyColors.Gold),
                                        children: [
                                  TextSpan(
                                    text: "BP : ",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.amber,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "120/80 mmHg",
                                  )
                                ]))),
                            Expanded(
                                child: RichText(
                                    text: TextSpan(
                                        style: GoogleFonts.aBeeZee(
                                            color: MyColors.Gold),
                                        children: [
                                  TextSpan(
                                    text: "BMI : ",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.amber,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "22.9",
                                  )
                                ]))),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: RichText(
                                    text: TextSpan(
                                        style: GoogleFonts.aBeeZee(
                                            color: MyColors.Gold),
                                        children: [
                                  TextSpan(
                                    text: "Pulse : ",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.amber,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "72 bpm",
                                  )
                                ]))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: MyColors.RedDark,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    ' Visit History',
                    style: TextStyle(
                        fontSize: 18,
                        color: MyColors.Background,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.Navy,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          child: ListTile(
                            title: const Text('Date: 2024-06-01'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                    'Reason of Checkup: Routine Checkup'),
                                const Text('Follow Up: Yes'),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            MyColors.Navy),
                                        foregroundColor: WidgetStatePropertyAll(
                                            MyColors.Background)),
                                    onPressed: () {
                                      // Placeholder for download logic
                                    },
                                    child: const Text('Download Prescription'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Card(
                          child: ListTile(
                            title: const Text('Date: 2024-05-01'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text('Reason of Checkup: Headache'),
                                const Text('Follow Up: No'),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            MyColors.Navy),
                                        foregroundColor: WidgetStatePropertyAll(
                                            MyColors.Background)),
                                    onPressed: () {
                                      // Placeholder for download logic
                                    },
                                    child: const Text('Download Prescription'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Card(
                          child: ListTile(
                            title: const Text('Date: 2024-05-01'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text('Reason of Checkup: Headache'),
                                const Text('Follow Up: No'),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            MyColors.Navy),
                                        foregroundColor: WidgetStatePropertyAll(
                                            MyColors.Background)),
                                    onPressed: () {
                                      // Placeholder for download logic
                                    },
                                    child: const Text('Download Prescription'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Card(
                          child: ListTile(
                            title: const Text('Date: 2024-05-01'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text('Reason of Checkup: Headache'),
                                const Text('Follow Up: No'),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            MyColors.Navy),
                                        foregroundColor: WidgetStatePropertyAll(
                                            MyColors.Background)),
                                    onPressed: () {
                                      // Placeholder for download logic
                                    },
                                    child: const Text('Download Prescription'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                        // Add more ListTile widgets for additional visit history
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(MyColors.RedDark),
                          foregroundColor:
                              WidgetStatePropertyAll(MyColors.Background)),
                      onPressed: () {
                        // Add follow-up logic here
                      },
                      child: const Text('Add Follow-Up'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(MyColors.Navy),
                          foregroundColor:
                              WidgetStatePropertyAll(MyColors.Background)),
                      onPressed: () {
                        // Another button logic here
                      },
                      child: const Text('Add Prescription'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
