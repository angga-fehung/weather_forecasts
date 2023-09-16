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
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Friday, 25 December 2020',
                    style: TextStyle(
                      fontFamily: 'UbuntuCondensed',
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
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
                            width: 15,
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
