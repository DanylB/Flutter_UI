import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart';
import 'package:covid19_app_ui/screens/export_screens.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
  // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}
