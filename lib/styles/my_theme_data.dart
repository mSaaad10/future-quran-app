import 'package:flutter/material.dart';

class MyThemeData {
  static const Color goldColor = Color(0xFFB7935F);
  static const Color darkBlueColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: goldColor,
    primary: goldColor,
      secondary: Colors.black,
      onPrimary: goldColor
    ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      canvasColor: Color(0xFFB7935F),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 36,
        ),
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
      cardTheme: CardTheme(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
          elevation: 18,
          margin: EdgeInsets.symmetric(vertical: 22, horizontal: 22)),
      dividerColor: goldColor,
      textTheme: TextTheme(
          titleMedium: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          labelMedium: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
labelSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: goldColor),
          bodyMedium: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          bodySmall: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontSize: 18)));
  static ThemeData darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: darkBlueColor,

      ),
      colorScheme: ColorScheme.fromSeed(seedColor: goldColor,
          primary: darkBlueColor,
          secondary: Colors.white,
          onPrimary: yellowColor,
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      canvasColor: darkBlueColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 36,
        ),
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
      cardTheme: CardTheme(
          color: darkBlueColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
          elevation: 18,
          margin: EdgeInsets.symmetric(vertical: 22, horizontal: 22)),
      dividerColor: yellowColor,
      textTheme: TextTheme(
          titleMedium: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          labelMedium: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          labelSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: yellowColor),

          bodyMedium: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          bodySmall: TextStyle(
              fontWeight: FontWeight.normal,
              color: yellowColor,
              fontSize: 18)));
}
