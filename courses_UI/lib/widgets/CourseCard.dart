import 'package:flutter/material.dart';
import 'package:courses_ui/data/data.dart';

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: courseTile.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 0,
              margin: const EdgeInsets.only(top: 14),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/course_screen'),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Image(
                        image: AssetImage(courseTile[index].image),
                      ),
                      title: _buildTitleListTile(index),
                      subtitle: _buildSubtitleListTile(index),
                    ),
                  ),
                  Positioned(
                    top: 14,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _buildRating(index),
                        SizedBox(height: 15),
                        _buildPrice(index),
                        SizedBox(height: 15),
                        _buildProgressIndicator(index)
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _buildProgressIndicator(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 8,
        width: 40,
        child: LinearProgressIndicator(
          value: courseTile[index].progress,
          backgroundColor: Color(0xFFE6F2F6),
          valueColor: AlwaysStoppedAnimation(Color(0xFF53D6FF)),
        ),
      ),
    );
  }

  _buildTitleListTile(int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 100),
      child: Text(
        courseTile[index].title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF0A3875),
        ),
      ),
    );
  }

  _buildSubtitleListTile(int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 100),
      child: Wrap(
        children: [
          Chip(
            label: Text(courseTile[index].teg[0]),
            labelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xFF6E6F8B),
            ),
            backgroundColor: Color(0xFFE2E2E8),
          ),
          SizedBox(width: 7),
          Chip(
            label: Text(courseTile[index].teg[1]),
            labelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xFF6E6F8B),
            ),
            backgroundColor: Color(0xFFE2E2E8),
          ),
          Row(
            children: [
              Image(
                image: AssetImage(
                  'assets/camera_icon.png',
                ),
              ),
              SizedBox(width: 12),
              Text(
                courseTile[index].hours,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF6E6F8B),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildRating(int index) {
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
            courseTile[index].rating.toString(),
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

  _buildPrice(int index) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 16, color: Color(0xFF0A3875)),
        children: [
          TextSpan(
            text: '${courseTile[index].price}',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: '/mo',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
