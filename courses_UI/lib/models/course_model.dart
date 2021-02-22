import 'package:flutter/material.dart';

class CourseTile {
  final String image;
  final String title;
  final List<String> teg;
  final String hours;
  final String price;
  final double rating;
  final double progress;

  CourseTile({
    @required this.image,
    @required this.title,
    @required this.teg,
    @required this.hours,
    @required this.price,
    @required this.rating,
    @required this.progress,
  });
}
