import 'package:flutter/material.dart';

class MobScreenLayout extends StatefulWidget {
  const MobScreenLayout({super.key});

  @override
  State<MobScreenLayout> createState() => _MobScreenLayoutState();
}

class _MobScreenLayoutState extends State<MobScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("This is Mobile",style: TextStyle(color: Colors.white,fontSize: 20)),),
    );
  }
}