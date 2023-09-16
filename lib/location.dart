import 'package:flutter/material.dart';
import 'package:weather_forecasts/home.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  const Expanded(
                    child: Text(
                      " Select City",
                      style: TextStyle(
                        fontFamily: 'UbuntuCondensed',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.add,
                      size: 26,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView(
                  children: const [
                    ListTile(
                      title: Text(
                        'Mumbai',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 24,
                        ),
                      ),
                      subtitle: Text(
                        '22°C',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
