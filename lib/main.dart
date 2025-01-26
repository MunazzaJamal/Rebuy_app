import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuy_app/routes/routes.dart';
import 'package:rebuy_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.appRoutes(),
      home: SplashScreen(),
    );
  }
}
