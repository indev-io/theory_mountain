import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

var appTheme = ThemeData(
  fontFamily: GoogleFonts.nobile().fontFamily,
  brightness: Brightness.dark,
);

class ThemeProvider extends ChangeNotifier {
  var _selectedTheme;

  ThemeData light = ThemeData.light();

  ThemeData dark = ThemeData.dark();

  ThemeProvider(isDarkMode) {
    _selectedTheme = isDarkMode ? dark : light;
  }

  void swapTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_selectedTheme == dark) {
      _selectedTheme = light;
      prefs.setBool("isDarkTheme", false);
    } else {
      _selectedTheme = dark;
      prefs.setBool("isDarkTheme", true);
    }
    notifyListeners();
  }

  ThemeData get getTheme => _selectedTheme;
}
