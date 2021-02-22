import 'package:flutter/material.dart';

import 'CreatePasswordPage.dart';

class InstructionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/mail.png'),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Check your mail',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'We have send a password recover\ninstructions to your email.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(height: 50),
                    _buildOpenBtn(context),
                    SizedBox(height: 50),
                    _buildSkipBtn(context),
                  ]),
            ),
            _buildBottomText(),
          ],
        ),
      ),
    );
  }

  _buildBottomText() {
    return Expanded(
      flex: 1,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Did mot receive the email? Check your spam filter,\nor ',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                height: 2,
              ),
            ),
            TextSpan(
              text: 'try another email address',
              style: TextStyle(
                color: Color(0xFF7B38ED),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildSkipBtn(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => CreatePasswordPage()),
      ),
      child: Text(
        'Skip, i\'ll confirm latter',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.grey.shade600,
        ),
      ),
    );
  }
}

_buildOpenBtn(context) {
  return GestureDetector(
    onTap: () => print('Opened email app'),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70.0),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFF7B39ED),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'Open email app',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              letterSpacing: 1),
        ),
      ),
    ),
  );
}
