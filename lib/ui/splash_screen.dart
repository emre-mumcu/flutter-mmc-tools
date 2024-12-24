import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Using WidgetsBinding to delay the execution until the widget is fully initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      precacheImage(AssetImage('assets/images/splash.jpeg'), context);
      Timer(Duration(seconds: 5), () {
        Navigator.pushReplacementNamed(context, '/home');
        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()),);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: CircularProgressIndicator(), // Optional: Show loading spinner
        ),
      ),
    );
  }
}
