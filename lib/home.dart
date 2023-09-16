import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Expanded(
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
                      Icon(
                        Icons.map_outlined,
                        size: 26,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.settings_outlined,
                        size: 26,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'in sync',
                    style: TextStyle(
                      fontFamily: 'UbuntuCondensed',
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
