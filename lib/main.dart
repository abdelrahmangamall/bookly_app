import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/splash/presentation/views/splashView.dart';

void main() {
  runApp(const booklyApp());
}

class booklyApp extends StatelessWidget {
  const booklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: splashView(),
    );
  }
}