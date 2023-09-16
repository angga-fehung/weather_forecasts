import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  const Expanded(
                    child: ListTile(
                      title: Text(
                        'Mumbai',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        'Current Location',
                        style: TextStyle(
                          fontFamily: 'UbuntuCondensed',
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      _buildIcon(Icons.map_outlined),
                      const SizedBox(width: 10),
                      _buildIcon(Icons.settings_outlined),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  _buildText('in sync', 10),
                  const SizedBox(height: 30),
                  _buildText('Friday, 25 December 2020', 18),
                  const SizedBox(height: 30),
                  _buildTemperature(),
                  const SizedBox(height: 10),
                  _buildTemperatureRange(),
                  const SizedBox(height: 20),
                  Image.asset('assets/img/drizzle.png'),
                  const SizedBox(height: 25),
                  _buildText('Light Drizzle', 18),
                  const SizedBox(height: 25),
                  _buildSunriseSunset(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(IconData icon) {
    return InkWell(
      onTap: () {},
      child: Icon(
        icon,
        size: 26,
      ),
    );
  }

  Widget _buildText(String text, double fontSize) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'UbuntuCondensed',
        fontSize: fontSize,
      ),
    );
  }

  Widget _buildTemperature() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          '22',
          style: TextStyle(
            fontFamily: 'UbuntuCondensed',
            fontSize: 96,
          ),
        ),
        Text(
          '℃',
          style: TextStyle(
            fontFamily: 'UbuntuCondensed',
            fontSize: 36,
          ),
        ),
      ],
    );
  }

  Widget _buildTemperatureRange() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Row(
          children: [
            Icon(Icons.arrow_downward_sharp),
            Text(
              '16℃',
              style: TextStyle(
                fontFamily: 'UbuntuCondensed',
                fontSize: 18,
              ),
            ),
            SizedBox(width: 20),
            Icon(Icons.arrow_upward_sharp),
            Text(
              '26℃',
              style: TextStyle(
                fontFamily: 'UbuntuCondensed',
                fontSize: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSunriseSunset() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Row(
          children: [
            Icon(CupertinoIcons.sunrise),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '09:18 AM',
                style: TextStyle(
                  fontFamily: 'UbuntuCondensed',
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(width: 20),
            Icon(CupertinoIcons.sunset),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '06:32 PM',
                style: TextStyle(
                  fontFamily: 'UbuntuCondensed',
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
