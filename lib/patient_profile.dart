import 'package:flutter/material.dart';


class PatientProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor:Colors.deepPurple[200] ,

        title: Text("Patient Profile",
          style: TextStyle(fontSize: 18),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Icon(
                Icons.person,
                size: 100,
                color: Colors.purple[800],
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Name: Mr ABC')),
                        Expanded(child: Text('Age: 30')),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Gender: Male')),
                        Expanded(child: Text('Mobile No: 1234567890')),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Address: IIT Guwahati, Assam')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  ' Last Visit Vitals',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Height: 175 cm')),
                        Expanded(child: Text('Weight: 70 kg')),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('BP: 120/80 mmHg')),
                        Expanded(child: Text('BMI: 22.9')),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Pulse: 72 bpm')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  ' Visit History',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: Text('Date: 2024-06-01'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Reason of Checkup: Routine Checkup'),
                          Text('Follow Up: Yes'),

                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                // Placeholder for download logic
                              },
                              child: Text('Download Prescription'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      title: Text('Date: 2024-05-01'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Reason of Checkup: Headache'),
                          Text('Follow Up: No'),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                // Placeholder for download logic
                              },
                              child: Text('Download Prescription'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      title: Text('Date: 2024-05-01'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Reason of Checkup: Headache'),
                          Text('Follow Up: No'),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                // Placeholder for download logic
                              },
                              child: Text('Download Prescription'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      title: Text('Date: 2024-05-01'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Reason of Checkup: Headache'),
                          Text('Follow Up: No'),

                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                // Placeholder for download logic
                              },
                              child: Text('Download Prescription'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Add more ListTile widgets for additional visit history
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Add follow-up logic here
                  },
                  child: Text('Add Follow-Up'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Another button logic here
                  },
                  child: Text('Add Prescription'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
