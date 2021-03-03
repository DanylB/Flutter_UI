import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(bottom: size.height * .1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Image.asset('assets/home_page_img.png'),
            ),
            SizedBox(height: 30),
            Expanded(
              flex: 1,
              child: _buildTitleText(),
            ),
            SizedBox(height: 30),
            Expanded(
              flex: 2,
              child: _buildSubtitleText(),
            ),
            _buildButton(size),
          ],
        ),
      ),
    );
  }

  _buildButton(Size size) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: size.height * 0.1),
      child: Container(
        alignment: Alignment.center,
        width: size.width * .5,
        height: size.height * .07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFF343674),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF343674).withOpacity(0.77),
                offset: Offset(0, 15),
                blurRadius: 60,
              ),
            ]),
        child: Text(
          'Start Learning',
          style: TextStyle(
            fontFamily: 'Mulish',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _buildSubtitleText() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 340),
      child: Text(
        'Amet minim mollit non deserunt ullamco est sit aliqua amet sint. Velit officia consequat duis enim velit mollit.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          height: 1.5,
          color: Color(0xFF343674).withOpacity(0.8),
        ),
      ),
    );
  }

  _buildTitleText() {
    return Text('The Best Platform For Online Learning',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 31,
          fontWeight: FontWeight.bold,
          height: 1.3,
          color: Color(0xFF343674),
        ));
  }
}
