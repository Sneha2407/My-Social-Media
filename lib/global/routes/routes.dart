import 'package:flutter/cupertino.dart';
import 'package:my_social_media/screens/appointments_screen.dart';
import 'package:my_social_media/screens/company_screen.dart';
import 'package:my_social_media/screens/starting_screen.dart';
import 'package:my_social_media/screens/visionboard.dart';

var routes = <String, WidgetBuilder>{
  StartingScreen.id: (_) => const StartingScreen(),
  // ChooseLanguage.id: (_) => const ChooseLanguage(),
   VisionBoard.id: (_) => const VisionBoard(),
  AppointmentsScreen.id:(_)=> const AppointmentsScreen(),
  CompanyScreen.id:(_) => const CompanyScreen(),
};
