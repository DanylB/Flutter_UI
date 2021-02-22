import 'package:courses_ui/data/data.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 20),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              _buildTopText(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 100, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildRating(),
                    _buildHoursIndicator(),
                    _buildUsersIndicator(),
                  ],
                ),
              ),
              SizedBox(height: 30),
              _buildVideoCard(),
              SizedBox(height: 30),
              _buildBuyRow(),
              SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.fromLTRB(82, 20, 82, 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF6E6F8B).withOpacity(0.2),
                  ),
                ),
                child: Text(
                  'Add to Wishlist',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF6E6F8B),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildBuyRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            courseTile[0].price.toString(),
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0A3875),
            ),
          ),
          Text(
            ' mounthly',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0xFF0A3875),
            ),
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            width: 140,
            height: 65,
            decoration: BoxDecoration(
              color: Color(0xFF2F80ED),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              'Buy Now',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  _buildVideoCard() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(image: AssetImage('assets/Card_3.png')),
        Positioned(
          child: ClipOval(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.white.withOpacity(0.8),
              child: Icon(
                Icons.play_arrow_rounded,
                color: Color(0xFF2F80ED),
                size: 70,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _buildUsersIndicator() {
    return Row(
      children: [
        Image(
          image: AssetImage('assets/people_icon.png'),
        ),
        SizedBox(width: 10),
        Text(
          '2,300',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF6E6F8B),
          ),
        )
      ],
    );
  }

  _buildHoursIndicator() {
    return Row(
      children: [
        Image(
          image: AssetImage('assets/camera_icon.png'),
        ),
        SizedBox(width: 10),
        Text(
          '35 hours',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF6E6F8B),
          ),
        )
      ],
    );
  }

  _buildTopText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: Text(
            'Complete C# Unity Developer 3D: Learn to Code Making Games',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0A3875),
              height: 1.2,
              letterSpacing: 1.2,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Game development & design. Learn C# using Unity Engine. Your first 3D Unity games for web, Mac & PC.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0xFF6E6F8B),
            height: 1.5,
            letterSpacing: 1,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'GameDev.tv Team',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF0A3875),
          ),
        ),
      ],
    );
  }

  _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          Icons.close_rounded,
          color: Color(0xFF6E6F8B),
          size: 24,
        ),
      ),
    );
  }

  _buildRating() {
    return Container(
      width: 51,
      height: 36,
      decoration: BoxDecoration(
        color: Color(0xFFFF9343),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('assets/star_icon.png'),
          ),
          Text(
            courseTile[0].rating.toString(),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
