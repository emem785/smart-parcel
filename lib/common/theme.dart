import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalTheme {
  static const primaryColor = Color(0xFF27930C);
  static const primary400 = Color(0xFF27930C);
  static const lightGrey = Color(0xFF808080);
  static const lightGrey2 = Color(0xFFC4C4C4);

  static ThemeData getGlobalTheme() {
    return ThemeData(
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      toggleableActiveColor: primaryColor,
      colorScheme: getColorScheme(),
      textTheme: getTextTheme(),
      elevatedButtonTheme: getElevatedButtonTheme(),
      inputDecorationTheme: getInputDecorationTheme(),
      tabBarTheme: getTabBarTheme(),
      checkboxTheme: getCheckboxTheme(),
    );
  }

  static InputDecorationTheme getInputDecorationTheme() {
    return const InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: lightGrey2,
          width: 1.5,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1.5,
          color: primaryColor,
        ),
      ),
    );
  }

  static ElevatedButtonThemeData getElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: GoogleFonts.montserrat(
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
        minimumSize: const Size.fromHeight(40),
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }

  static ColorScheme getColorScheme() {
    return const ColorScheme.light(
      primary: primaryColor,
      primaryVariant: primaryColor,
      secondary: primaryColor,
      secondaryVariant: primaryColor,
      surface: primaryColor,
      background: primaryColor,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: primaryColor,
      onSurface: lightGrey2,
      onBackground: Colors.white,
      onError: Colors.white,
      brightness: Brightness.light,
    );
  }

  static TextTheme getTextTheme() {
    return GoogleFonts.montserratTextTheme(
      const TextTheme(
        headline6: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        bodyText1: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: lightGrey,
        ),
        bodyText2: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: lightGrey,
        ),
      ),
    );
  }

  static TabBarTheme getTabBarTheme() {
    return const TabBarTheme(
      labelColor: primaryColor,
      labelStyle: TextStyle(color: Colors.black),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: primaryColor),
      ),
    );
  }

  static CheckboxThemeData getCheckboxTheme() {
    return const CheckboxThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  static TextTheme textTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }
}
