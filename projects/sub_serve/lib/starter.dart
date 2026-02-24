import 'package:flutter/material.dart';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:sub_serve/app/core/config/config_di.dart' as di;
import 'package:sub_serve/app/routes/app_routes.dart';
import 'package:sub_serve/app/services/app_config_service.dart';
import 'package:sub_serve/src/resources/resources.g.dart' as subserve_i18n;

/// Launches MasterFabric SubServe. Same structure as storefront_woo (no lib/flavor).
/// Loads config, GoRouter (splash → onboarding → home), runs [MasterApp].
///
/// [environment]: 'dev' | 'staging' | 'prod'
Future<void> launchApp({String environment = 'dev'}) async {
  WidgetsFlutterBinding.ensureInitialized();

  debugPrint('🚀 MasterFabric SubServe starting (environment: $environment)');

  await MasterApp.runBefore(
    assetConfigPath: 'assets/app_config.json',
    hydrated: true,
  );

  final configHelper = AssetConfigHelper();
  await configHelper.loadConfig('assets/app_config.json', false);
  final appConfigService = AppConfigService(configHelper);

  final defaultLanguage = appConfigService.defaultLanguageCode;
  final themeConfig = appConfigService.themeConfig;

  await subserve_i18n.LocaleSettings.setLocaleRaw(defaultLanguage);

  await di.configureDependencies(environment: environment);

  runApp(
    subserve_i18n.TranslationProvider(
      child: MasterApp(
        router: appRouter,
        themeMode: themeConfig.themeMode,
        fontScale: themeConfig.fontScale,
      ),
    ),
  );
}
