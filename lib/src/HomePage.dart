import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_artisto/src/ArtistosScreen.dart';
import 'package:flutter_artisto/src/AboutScreen.dart';
import 'package:flutter_artisto/src/UserListScreen.dart';
import 'package:flutter_artisto/src/SettingScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ArtistosHomeScreenView(),
        '/about': (context) => AboutScreenView(),
        '/Setting': (context) => SettingScreen(),
        '/PublisherList': (context) => PublisherList(),
      },
    );
  }
}
