import 'package:flutter/material.dart';
import 'package:weather_forecasts/home.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  void _navigateToHomeScreen() {
    Navigator.pop(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  Widget _buildListTile(
    String title,
    String? subtitle,
    bool showTrailingIcon,
  ) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'UbuntuCondensed',
          fontSize: subtitle == null ? 24 : 18,
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: const TextStyle(
                fontFamily: 'UbuntuCondensed',
                fontSize: 12,
              ),
            )
          : null,
      onTap: () {},
      trailing: showTrailingIcon ? const Icon(Icons.check) : null,
    );
  }

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
                    onTap: _navigateToHomeScreen,
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
                    _buildListTile('Theme', null, false),
                    _buildListTile('Dark Theme', 'Join the Dark Side!', false),
                    _buildListTile('Light Theme', 'Let There be Light!', true),
                    _buildListTile('Feedback', null, false),
                    _buildListTile(
                      'Report an Issue',
                      'Facing an issue? Report and we’ll look into it.',
                      false,
                    ),
                    _buildListTile(
                      'Rate on App Store',
                      'Enjoying the app? Leave a review on the App Store.',
                      false,
                    ),
                    _buildListTile('About', null, false),
                    _buildListTile('About Weather',
                        'Read a bit more about the app.', false),
                    _buildListTile(
                      'The Team',
                      'Get to know the team that made Weather a reality.',
                      false,
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
