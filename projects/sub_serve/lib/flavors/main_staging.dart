import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:sub_serve/starter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const environment = Environment.production;
  Flavor.create(
    environment,
    name: 'STAGING',
    color: Colors.orange,
    properties: {'apiUrl': 'https://api-staging.example.com'},
  );

  await launchApp(environment: 'staging');
}
