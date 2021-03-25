import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:covid19_app_ui/screens/export_screens.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}
