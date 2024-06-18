import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Patient {
  final String name;
  final String phoneNumber;
  final String firstVisitDate;
  final String gender;
  final String icon;
  final String type;

  Patient({required this.name, required this.phoneNumber, required this.firstVisitDate, required this.gender, 
  this.icon = "lib/assets/patient.png", this.type = "Check Up",
  });

  @override
  String toString(){
    return name;
  }
}
class patientList {
  patientList._();
  static List<Patient> patients = [
    Patient(name: 'kjasdlkja', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',icon: "lib/assets/boy.png",type: "Follow Up"),
    Patient(name: 'aljdflka', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',icon: "lib/assets/patient.png",),
    Patient(name: 'hi', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',icon: "lib/assets/boy.png",),
    Patient(name: 'oh no', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',icon: "lib/assets/patient.png",type: "Follow Up"),
    Patient(name: 'mayank', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',icon: "lib/assets/patient.png",),
    Patient(name: 'hasilkalkdfl', phoneNumber: '123456789', firstVisitDate: '01-01-2024', gender: 'Male',icon: "lib/assets/patient.png",),
  ];
}