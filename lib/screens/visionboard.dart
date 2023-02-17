import 'package:flutter/material.dart';

class VisionBoard extends StatelessWidget {
  const VisionBoard({super.key});
  static const String id = "/visionboard";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(child: Text("VisionBoard Screen", style: TextStyle(fontSize: 25),)),
    );
  }
}