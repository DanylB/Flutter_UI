import 'package:courses_ui/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondScreen(),
        '/course_screen': (context) => CourseScreen(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}



//  MediaQuery.of(context).size.width
//  MediaQuery.of(context).size.height
