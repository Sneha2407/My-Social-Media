import 'package:flutter/material.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});
  static const String id = "/appoinmentsScreen";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(child: Text("Appointments Screen", style: TextStyle(fontSize: 25),)),
    );
  }
}