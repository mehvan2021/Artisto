import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Setting',
          style: TextStyle(
              color: Color.fromARGB(255, 238, 234, 234),
              fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.red,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        index: 3,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.list, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          //Handle button tap
          if (index == 0) {
            Navigator.of(context).pushNamed('/');
          } else if (index == 1) {
            Navigator.of(context).pushNamed('/PublisherList');
          } else if (index == 3) {
            Navigator.of(context).pushNamed('/Setting');
          }
        },
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello Setting'),
          ],
        ),
      ),
    );
  }
}
