import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(32, 24, 32, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppBar(context),
              Spacer(flex: 2),
              Center(
                child: Image.asset('assets/image_1.png'),
              ),
              Spacer(flex: 2),
              _buildTitleText(context),
              Spacer(flex: 1),
              _buildHintText(context),
              Spacer(flex: 1),
              _buildButton(context),
              Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }

  _buildButton(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width * .35,
        minHeight: MediaQuery.of(context).size.width * .13,
      ),
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/second'),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF2F80ED)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
        child: Text(
          'Get Started',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  _buildHintText(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * .75,
      ),
      child: Text(
        'Find the right iOS Game Development course for you. Answer a few questions to see what we\'d recommend for you.',
        style: TextStyle(
          color: Color(0xFF6E6F8B),
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
      ),
    );
  }

  _buildTitleText(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * .75,
      ),
      child: Text(
        'Game Development Fundamentals Courses',
        style: TextStyle(
          color: Color(0xFF0A3875),
          fontSize: 24,
          fontWeight: FontWeight.w900,
          height: 1.3,
        ),
      ),
    );
  }

  _buildAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildTopIndicator(context),
        _buildSkipButton(context),
      ],
    );
  }

  _buildSkipButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .08,
      height: MediaQuery.of(context).size.width * .08,
      child: FittedBox(
        fit: BoxFit.cover,
        child: TextButton(
          onPressed: () => Navigator.pushNamed(context, '/second'),
          child: Text(
            'skip',
            style: TextStyle(
              color: Color(0xFF0A3875),
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }

  _buildTopIndicator(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipOval(
            child: Container(
              width: MediaQuery.of(context).size.width * .02,
              height: MediaQuery.of(context).size.width * .02,
              color: Color(0xFF2F80ED),
            ),
          ),
          ClipOval(
            child: Container(
              width: MediaQuery.of(context).size.width * .02,
              height: MediaQuery.of(context).size.width * .02,
              color: Color(0xFFCED7E3),
            ),
          ),
          ClipOval(
            child: Container(
              width: MediaQuery.of(context).size.width * .02,
              height: MediaQuery.of(context).size.width * .02,
              color: Color(0xFFCED7E3),
            ),
          ),
        ],
      ),
    );
  }
}
