
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../global/constants/app_constants.dart';

class ThemeProvider with ChangeNotifier {
  final SharedPreferences prefs;
  ThemeProvider({required this.prefs}) {
    _loadCurrentTheme();
  }

  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    prefs.setBool(AppConstants.theme, _darkTheme);
    notifyListeners();
  }

  void _loadCurrentTheme() async {
    _darkTheme = prefs.getBool(AppConstants.theme) ?? false;
    notifyListeners();
  }
}