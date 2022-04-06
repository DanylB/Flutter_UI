import 'package:dashboard_ui/MainContent.dart';
import 'package:dashboard_ui/RightSideBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'SIdeBar.dart';
import 'palette.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF1D1B1B),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          flex: 1,
          child: SideBar(),
        ),
        Expanded(
          flex: 2,
          child: MainContent(),
        ),
        Expanded(
          flex: 1,
          child: RightSideBar(),
        ),
      ],
    );
  }
}
