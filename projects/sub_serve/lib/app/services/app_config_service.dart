import 'package:flutter/material.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:sub_serve/app/models/app_theme_model.dart';

class AppConfigService {
  AppConfigService(this._configHelper);

  final AssetConfigHelper _configHelper;

  AppThemeModel get themeConfig {
    final themeModeRaw = _configHelper.getString(
      'ui_configuration.theme_mode',
      'light',
    );
    final fontScale = _configHelper.getDouble('ui_configuration.font_scale', 1);
    final primary = _configHelper.getString(
      'ui_configuration.primary_color',
      '#6750A4',
    );
    final accent = _configHelper.getString(
      'ui_configuration.accent_color',
      '#FFFFFF',
    );

    return AppThemeModel(
      themeMode: _parseThemeMode(themeModeRaw),
      fontScale: fontScale,
      primaryColor: _parseHexColor(primary, fallback: Colors.deepPurple),
      accentColor: _parseHexColor(accent, fallback: Colors.white),
    );
  }

  String get defaultLanguageCode => _configHelper.getString(
    'localization_configuration.default_language',
    'en',
  );

  ThemeMode _parseThemeMode(String raw) {
    switch (raw.toLowerCase()) {
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.light;
    }
  }

  Color _parseHexColor(String raw, {required Color fallback}) {
    final normalized = raw.trim().replaceFirst('#', '');
    if (normalized.length != 6 && normalized.length != 8) {
      return fallback;
    }

    final withAlpha = normalized.length == 6 ? 'FF$normalized' : normalized;
    final intValue = int.tryParse(withAlpha, radix: 16);
    if (intValue == null) {
      return fallback;
    }

    return Color(intValue);
  }
}
