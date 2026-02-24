import 'package:flutter/material.dart';

class AppThemeModel {
  const AppThemeModel({
    required this.themeMode,
    required this.fontScale,
    required this.primaryColor,
    required this.accentColor,
  });

  final ThemeMode themeMode;
  final double fontScale;
  final Color primaryColor;
  final Color accentColor;
}
