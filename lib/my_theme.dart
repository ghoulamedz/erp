import 'package:flutter/material.dart';

// const scaffBG = Colors.greenAccent;
// const surface = Color(0xfff8f9ff);
// const onSurafce = Color(0xFF0B1C30);
// const primary = Color(0xff0f172a);
// const secondary = Color(0xff334155);
// const tertiary = Color(0xFF0C9488);
// const error = Color(0xFFBA1A1A);
// const onError = Color(0xFFFFFFFF);

const scaffBG = Color(0xFFF4F6F8);
const surface = Colors.white;
const onSurface = textPrimary;
const primary = Color(0xFF1AA483); // teal-green
const secondary = Color(0xFF1AA483);
const tertiary = Color(0xFF1AA483);
const background = Color(0xFFF4F6F8);
const error = Color(0xFFBA1A1A);
const onError = Colors.white;
const textPrimary = Color(0xFF1F2937);
const textSecondary = Color(0xFF6B7280);

final ThemeData myTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Inter',
  scaffoldBackgroundColor: scaffBG,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: Colors.purpleAccent,
    secondary: secondary,
    onSecondary: Colors.yellowAccent,
    surface: surface,
    onSurface: onSurface,
    error: error,
    onError: onError,
    background: background,
    onBackground: textPrimary,
  ),

  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: textPrimary,
    ),
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      color: textSecondary,
    ),
    displayLarge: TextStyle(
      fontFamily: 'Manrope',
      fontSize: 72,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Manrope',
      fontSize: 44, // 2.75rem
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
  ),
  cardTheme: CardThemeData(
    color: surface,
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: background,
    elevation: 0,
    foregroundColor: textPrimary,
  ),
);
