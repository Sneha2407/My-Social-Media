import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});
  static const String id = "/firstScreen";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(child: Text("Starting Screen", style: TextStyle(fontSize: 25),)),
    );
  }
}