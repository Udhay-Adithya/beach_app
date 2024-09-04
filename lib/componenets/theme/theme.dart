import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'palette.dart';

// Define your light mode theme
ThemeData darkTheme = ThemeData(
  splashColor: darksplashColor,
  dialogBackgroundColor: darkdialogBackgroundColor,
  unselectedWidgetColor: darkunselectedWidgetColor,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: darkBG,
    primary: darkPrimary,
    secondary: darkSecondary,
    tertiary: darkTertiary,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(),
);

// Define your dark mode theme
ThemeData lightTheme = ThemeData(
  splashColor: lightsplashColor,
  dialogBackgroundColor: lightdialogBackgroundColor,
  unselectedWidgetColor: lightunselectedWidgetColor,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: lightBG,
    primary: lightPrimary,
    secondary: lightSecondary,
    tertiary: lightTertiary,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(),
);
