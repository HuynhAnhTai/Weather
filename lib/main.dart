import 'package:weather/infrastructure/injection_dependencies/injection_dependencies.dart';
import 'package:weather/screen/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  configureDependencies();
  runApp(MyApp.create());
}
