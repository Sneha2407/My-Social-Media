import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_social_media/responsive/mobScreenLayout.dart';
import 'package:my_social_media/responsive/responsive_layout.dart';
import 'package:my_social_media/responsive/webScreenLayout.dart';
import 'package:my_social_media/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        MobScreenLayout: MobScreenLayout(),
        WebScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
