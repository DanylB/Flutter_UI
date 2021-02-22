import 'package:courses_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    // var sizeH = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 26, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitleText(sizeW),
                  SizedBox(height: 20),
                  _buildSubtitleText(sizeW),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: _buildCardList(),
                  ),
                  _buildFundamentalsRow(),
                  CourseCard(),
                ],
              ),
            ),
            BottomNavBar(),
          ],
        ),
      ),
    );
  }

  _buildFundamentalsRow() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'The Fundamentals',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0A3875),
            ),
          ),
          Image(
            image: AssetImage('assets/menu_icon.png'),
          )
        ],
      ),
    );
  }

  _buildCardList() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: 24),
        BuildCard(
          bgTitleText: Color(0xFFC87FE6).withOpacity(0.5),
          titleText: 'Popular',
          cardText: 'How to Create iOS 2D Games with SpriteKit and Swift 4',
          image: Image(
            image: AssetImage('assets/Card_1.png'),
          ),
        ),
        SizedBox(width: 15),
        BuildCard(
          bgTitleText: Color(0xFF93B0F2).withOpacity(0.5),
          titleText: 'Latest',
          cardText:
              'Become a game designer, the complete series coding to design',
          image: Image(
            image: AssetImage('assets/Card_2.png'),
          ),
        ),
      ],
    );
  }

  _buildSubtitleText(double sizeW) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: sizeW * 0.8),
        child: Text(
          'Find the right iOS Game Development course for you. Answer a few questions to see what we\'d recommend for you.',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF6E6F8B),
            height: 1.8,
            wordSpacing: 1.5,
          ),
        ),
      ),
    );
  }

  _buildTitleText(double sizeW) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: sizeW * 0.6),
        child: Text(
          'Fundamentals Courses',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0A3875),
          ),
        ),
      ),
    );
  }
}
