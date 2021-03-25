import 'package:flutter/material.dart';

class BuildModeIndicator extends StatefulWidget {
  @override
  _BuildModeIndicatorState createState() => _BuildModeIndicatorState();
}

class _BuildModeIndicatorState extends State<BuildModeIndicator> {
  int index = 1;

  indexCounter(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => indexCounter(1),
          child: Text(
            'Total',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: .5,
              color: index == 1 ? Colors.white : Colors.white.withOpacity(.6),
            ),
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () => indexCounter(2),
          child: Text(
            'Today',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: .5,
              color: index == 2 ? Colors.white : Colors.white.withOpacity(.6),
            ),
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () => indexCounter(3),
          child: Text(
            'Yesterday',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: .5,
              color: index == 3 ? Colors.white : Colors.white.withOpacity(.6),
            ),
          ),
        ),
      ],
    );
  }
}
