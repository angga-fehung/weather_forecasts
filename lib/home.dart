import 'dart:html';

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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LocationScreen()),
                          );
                        },
                        child: const Icon(
                          Icons.map_outlined,
                          size: 26,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingsScreen()),
                          );
                        },
                        child: const Icon(
                          Icons.settings_outlined,
                          size: 26,
                        ),
                      ),
                      const SizedBox(
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
                  const Text(
                    'in sync',
                    style: TextStyle(
                      fontFamily: 'UbuntuCondensed',
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Friday, 25 December 2020',
                    style: TextStyle(
                      fontFamily: 'UbuntuCondensed',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
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
                          SizedBox(
                            width: 20,
                          ),
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
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  ),
                  Image.asset(
                    'assets/img/drizzle.png',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Light Drizzle',
                    style:
                        TextStyle(fontFamily: 'UbuntuCondensed', fontSize: 18),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
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
                          SizedBox(
                            width: 20,
                          ),
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
