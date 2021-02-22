import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'CircleProdress.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        _buildPage(
          image: Image.asset('assets/1.png'),
          titleText: 'Explore Fashion',
          subtitleText:
              'Explore the 2020’s hottest fashion,\njewellery, accessories and more...',
          index: 1,
          progress: 35,
        ),
        _buildPage(
          image: Image.asset('assets/2.png'),
          titleText: 'Select what you love',
          subtitleText:
              'Exclusively curated selection of top\nbrands in the palm of your hand...',
          index: 2,
          progress: 50,
        ),
        _buildPage(
          image: Image.asset('assets/3.png'),
          titleText: 'Be the real you',
          subtitleText:
              'It brings you the latest trends and\nproducts from all over the world...',
          index: 3,
          progress: 80,
        ),
      ],
    );
  }

  _buildPage(
      {Image image,
      String titleText,
      String subtitleText,
      double progress,
      int index}) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 60),
      child: Column(
        children: [
          _buildArrowBack(),
          Expanded(
            flex: 3,
            child: image,
          ),
          SizedBox(height: 40),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                _buildIndicatorRow(index),
                SizedBox(height: 50),
                _buildTitleText(titleText),
                SizedBox(height: 8),
                _buildSubtitileText(subtitleText),
              ],
            ),
          ),
          SizedBox(height: 40),
          Expanded(
            flex: 0,
            child: CustomPaint(
              foregroundPainter: CircleProgress(progress),
              child: ClipOval(
                child: Container(
                  alignment: Alignment.center,
                  width: 60,
                  height: 60,
                  color: Color(0xFF101010),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildArrowBack() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 0, 20),
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          )
        ],
      ),
    );
  }

  _buildSubtitileText(String subtitleText) {
    return Text(
      subtitleText,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Alice-Regular',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Color(0xFF707493),
      ),
    );
  }

  _buildTitleText(String titleText) {
    return Text(
      titleText,
      style: TextStyle(
        fontFamily: 'Alice-Regular',
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: Color(0xFF101010),
      ),
    );
  }

  _buildIndicatorRow(index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 5,
          width: index == 1 ? 15 : 1,
          decoration: BoxDecoration(
            color: index == 1 ? Color(0xFF101010) : Color(0xFFE5E5E5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 5),
        Container(
          height: 5,
          width: index == 2 ? 15 : 1,
          decoration: BoxDecoration(
            color: index == 2 ? Color(0xFF101010) : Color(0xFFE5E5E5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 5),
        Container(
          height: 5,
          width: index == 3 ? 15 : 1,
          decoration: BoxDecoration(
            color: index == 3 ? Color(0xFF101010) : Color(0xFFE5E5E5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 5),
      ],
    );
  }
}
