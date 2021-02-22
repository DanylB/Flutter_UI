import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  final Image image;
  final String titleText;
  final String cardText;
  final Color bgTitleText;

  const BuildCard({
    this.image,
    this.titleText,
    this.cardText,
    this.bgTitleText,
  });

  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width;
    var sizeH = MediaQuery.of(context).size.height;
    return Card(
      elevation: 0,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: image,
          ),
          _buildTitleText(sizeW, sizeH),
          _buildContainerWithOpacity(sizeW, sizeH),
        ],
      ),
    );
  }

  _buildTitleText(double sizeW, double sizeH) {
    return Positioned(
      top: 16,
      left: 16,
      child: Container(
        width: sizeW * 0.22,
        height: sizeH * 0.04,
        decoration: BoxDecoration(
          color: bgTitleText,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            titleText,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  _buildContainerWithOpacity(double sizeW, double sizeH) {
    return Positioned(
      bottom: 24,
      left: 24,
      child: Container(
        width: sizeW * 0.45,
        height: sizeH * 0.125,
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        decoration: BoxDecoration(
            color: Color(0xFF0A3875).withOpacity(0.5),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset('assets/camera_icon.png'),
                SizedBox(width: 8),
                Text(
                  '70 hrs',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.7),
                  ),
                )
              ],
            ),
            SizedBox(height: 7),
            Text(
              cardText,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                height: 1.3,
                letterSpacing: 0.8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
