import 'package:di_assets/src/app/global/globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppTheme with ChangeNotifier {
  Ref? ref;
  AppTheme({this.ref});
  //change theme mode
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  //app light theme
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColor.appWhite,
      backgroundColor: AppColor.appWhite,
      scaffoldBackgroundColor: AppColor.appWhite,
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColor.appLightBlue,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: AppColor.appLightBlue,
        ),
        headline2: GoogleFonts.poppins(
          fontSize: 20,
        ),
      ),
    );
  }

  //app dark theme
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: AppColor.appBlack,
      backgroundColor: AppColor.appBlack,
      scaffoldBackgroundColor: AppColor.appBlack,
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColor.appDeepBlue,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: AppColor.appLightBlue,
        ),
        headline2: GoogleFonts.poppins(
          fontSize: 20,
        ),
      ),
    );
  }
}
