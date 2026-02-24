import 'package:sub_serve/starter.dart';

Future<void> main() async {
  const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
  await launchApp(environment: flavor);
}
