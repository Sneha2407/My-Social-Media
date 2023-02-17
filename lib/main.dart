import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_social_media/provider/auth_provider.dart';
import 'package:my_social_media/provider/profile_provider.dart';
import 'package:my_social_media/provider/storage_provider.dart';
import 'package:my_social_media/provider/theme_provider.dart';
import 'package:my_social_media/responsive/mobScreenLayout.dart';
import 'package:my_social_media/responsive/responsive_layout.dart';
import 'package:my_social_media/responsive/webScreenLayout.dart';
import 'package:my_social_media/screens/login_screen.dart';
import 'package:my_social_media/utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   SharedPreferences prefs = await SharedPreferences.getInstance();
  // await getit_locator.init(prefs);
 
  // runApp(const MyApp()
  runApp(
    MultiProvider(
      providers: [
         ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProfileProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(prefs: prefs),
        ),
        ChangeNotifierProvider(
          create: (_) => StorageProvider(prefs),
        ),
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home:
      home: LoginPage(),
    );
  }
}
