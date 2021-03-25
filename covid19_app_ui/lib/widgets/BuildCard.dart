import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildCard extends StatelessWidget {
  final String title;
  final String number;
  final double numberSize;
  final Color color;
  const BuildCard({
    Key key,
    this.title,
    this.number,
    this.color,
    this.numberSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: color,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 16, 0, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: .2,
              ),
            ),
            Text(
              number,
              style: GoogleFonts.openSans(
                fontSize: numberSize,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
