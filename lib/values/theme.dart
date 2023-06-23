import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'strings/app_strings.dart';

ThemeData themeData = ThemeData.light(useMaterial3: false).copyWith(
  useMaterial3: false,
  colorScheme: const ColorScheme.light(
    primary: Colors.black,
    onPrimary: Colors.white,
    secondary: Colors.black,
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontFamily: AppStrings.instrumentSerif,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w500,
      fontSize: 22,
      letterSpacing: 1.2,
    ),
    elevation: 0,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white)
  ),
);
