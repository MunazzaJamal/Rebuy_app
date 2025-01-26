import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rebuy_app/routes/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay of 3 seconds
    Timer(const Duration(seconds: 3), () {
      Get.offNamed(RoutesName.signUp);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color.fromRGBO(255, 88, 88, 1),
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(255, 88, 88, 1), // Top color
            Color.fromRGBO(248, 87, 166, 1) // Bottom color (you can change it)
          ],
        ),
      ),
      child: Center(
          child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 60,
        child: Text(
          'Rebuy',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      )),
    ));
  }
}
