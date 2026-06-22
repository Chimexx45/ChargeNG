import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryGreen = Color(0xFF00A651);
  static const Color darkGreen = Color(0xFF007A3D);

  static ThemeData get light => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryGreen,
          primary: primaryGreen,
          secondary: darkGreen,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
      );
}
