import 'dart:async';
import 'package:flutter/material.dart';
import 'package:weather_forecasts/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        ),
      ),
    );

    return const Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Weather',
              style: TextStyle(
                fontFamily: 'UbuntuCondensed',
                fontSize: 24,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                'A minimal weather app',
                style: TextStyle(
                  fontFamily: 'UbuntuCondensed',
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
