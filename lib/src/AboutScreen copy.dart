import 'package:flutter/material.dart';
import 'package:flutter_artisto/src/SettingScreen.dart';

class AboutScreenView extends StatelessWidget {
  const AboutScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello About us'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => SettingScreen(),
                  ),
                );
              },
              child: Text('Setting'),
            )
          ],
        ),
      ),
    );
  }
}
