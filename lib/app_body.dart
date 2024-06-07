import 'package:flutter/material.dart';

class Patient {
  final String name;
  final String phoneNumber;
  final String firstVisitDate;
  final String gender;

  Patient({required this.name, required this.phoneNumber, required this.firstVisitDate, required this.gender});
}

class PatientList extends StatefulWidget {
  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  final List<Patient> patients = [
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male'),
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male'),
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male'),
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male'),
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male'),
    Patient(name: 'Mr ABC', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male'),
  ];

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(16,0,16,16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text('Welcome, Dr.Soumyajit', style: TextStyle(color: Colors.purple[800],fontSize: 24, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(173, 136, 198, 1),
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
                const SizedBox(width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red[200],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Handle the search action
                    },
                  ),
                ),
                const SizedBox(width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[100],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.person),
                    onPressed: () {
                      // Handle the search action
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: patients
                    .where((patient) =>
                patient.name.toLowerCase().contains(searchQuery) ||
                    patient.phoneNumber.contains(searchQuery) ||
                    patient.firstVisitDate.contains(searchQuery) ||
                    patient.gender.toLowerCase().contains(searchQuery))
                    .map((patient) => Card(
                  color: Colors.purple[50],
                  elevation: 4,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: 120,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(patient.name,
                              style:
                              TextStyle(
                                  fontWeight: FontWeight.bold)
                          ),
                          SizedBox(height: 5),
                          Text('Phone: ${patient.phoneNumber}'),
                          Text('First Visit: ${patient.firstVisitDate}'),
                          Text('Gender: ${patient.gender}'),
                        ],
                      ),
                    ),
                  ),
                ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
