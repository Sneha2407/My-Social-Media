import 'package:flutter/material.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({super.key});
  static const String id = "/companyScreen";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(child: Text("Company Screen", style: TextStyle(fontSize: 25),)),
    );
  }
}