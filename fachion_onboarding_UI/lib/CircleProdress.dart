import 'package:flutter/material.dart';
import 'dart:math';

class CircleProgress extends CustomPainter {
  double currentProggtrss;

  CircleProgress(this.currentProggtrss);
  @override
  void paint(Canvas canvas, Size size) {
    Paint outerCirkle = Paint()
      ..strokeWidth = 3
      ..color = Color(0xFFF1F3F6)
      ..style = PaintingStyle.stroke;

    Paint completeArc = Paint()
      ..strokeWidth = 3
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2) + 10;

    canvas.drawCircle(center, radius, outerCirkle);

    double angle = 2 * pi * (currentProggtrss / 100);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        angle, false, completeArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
