import 'package:flutter/material.dart';
import 'package:weather_forecasts/home.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
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
                      " Settings",
                      style: TextStyle(
                        fontFamily: 'UbuntuCondensed',
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text(
                        'Theme',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 24,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'Dark Theme',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        'Join the Dark Side!',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'Light Theme',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        'Let There be Light!',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'Feedback',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 24,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'Report an Issue',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        'Facing an issue? Report and we’ll look into it.',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'Rate on App Store',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        'Enjoying the app? Leave a review on the App Store.',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'About',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 24,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'About Weather',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        'Read a bit more about the app.',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'The Team',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        'Get to know the team that made Weather a reality.',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
