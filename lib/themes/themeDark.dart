// ignore_for_file: file_names
import 'package:flutter/material.dart';

ThemeData themes = ThemeData(
  scaffoldBackgroundColor: const Color(0xff404040),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const MaterialStatePropertyAll(Colors.white),
      backgroundColor: const MaterialStatePropertyAll(Colors.blueGrey),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const MaterialStatePropertyAll(Colors.blueGrey),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff404040),
    centerTitle: true,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xff404040),
    selectedItemColor: Colors.white,
  ),
  cardTheme: CardTheme(
    color: Colors.blueGrey,
    shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
