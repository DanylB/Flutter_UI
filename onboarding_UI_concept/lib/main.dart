import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        _getPage(
          bgColor: Color(0xFFF2BB25),
          image: Image.asset('assets/first.png'),
          text: 'Tell us your\nage',
          index: 1,
          hint: 'Age',
        ),
        _getPage(
          bgColor: Color(0xFFF126C20),
          image: Image.asset('assets/second.png'),
          text: 'Tell us your\nname',
          index: 2,
          hint: 'Name',
        ),
        _getPage(
          bgColor: Color(0xFF8ED547),
          image: Image.asset('assets/third.png'),
          text: 'Tell us your\neducation',
          index: 3,
          hint: 'Education',
        ),
      ],
    );
  }
}

_getPage({Color bgColor, Image image, String text, int index, String hint}) {
  return Scaffold(
    body: Container(
      padding: EdgeInsets.all(30),
      color: bgColor,
      child: Column(
        children: [
          _getSkipBtn(),
          Expanded(
            flex: 4,
            child: image,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                _getTellText(text),
                SizedBox(height: 25),
                _getPageIndicator(index),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _getTextBox(hint),
                _getPageNav(),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

_getPageNav() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Back',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      Text(
        'Next',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

_getTextBox(hint) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    ),
  );
}

_getPageIndicator(index) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: index == 1 ? 16 : 6,
        height: 6,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      SizedBox(width: 20),
      Container(
        width: index == 2 ? 16 : 6,
        height: 6,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      SizedBox(width: 20),
      Container(
        width: index == 3 ? 16 : 6,
        height: 6,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ],
  );
}

_getTellText(text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 35,
      fontWeight: FontWeight.w500,
    ),
  );
}

_getSkipBtn() {
  return Expanded(
    flex: 1,
    child: Container(
      alignment: Alignment.centerRight,
      child: Text(
        'Skip',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
