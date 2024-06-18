class clinic{
  clinic._();
  static String clinicName = "Clinic 1";
  static int appt = 6;
  static void update(){
      appt = clinic.clinicName == "Clinic 1" ?6 : clinic.clinicName == "Clinic 2" ? 5: clinic.clinicName == "Clinic 3" ? 4: 2 ;
  }
}