import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF473F97),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildAppBar(),
                  SizedBox(height: 20),
                  _buildTitleWithDropDawn(),
                  SizedBox(height: 40),
                  _buildSubtitleText(),
                  SizedBox(height: 14),
                  _buildBodyText(),
                  SizedBox(height: 16),
                  _buildButtons()
                ],
              ),
            ),
          ),
          _buildPrevention(context),
          SizedBox(height: 14),
          _buildWomanContainer(context),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  _buildBodyText() {
    return Text(
      'If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.',
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.white,
          height: 1.6,
        ),
      ),
    );
  }

  _buildSubtitleText() {
    return Text(
      'Are you feeling sick?',
      style: GoogleFonts.openSans(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }

  _buildTitleWithDropDawn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Covid-19',
          style: GoogleFonts.openSans(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        _buildDropDownButton(),
      ],
    );
  }

  _buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/menu_icon.png',
          scale: 3,
        ),
        Image.asset(
          'assets/bell_icon.png',
          scale: 4,
        ),
      ],
    );
  }

  _buildBottomNavBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBarItem(
            icon: Icons.home_rounded,
            index: 1,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/second'),
            child: BottomBarItem(icon: Icons.poll),
          ),
          BottomBarItem(icon: Icons.message),
          BottomBarItem(icon: Icons.error)
        ],
      ),
    );
  }

  _buildWomanContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 104,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFAEA1E5),
                  Color(0xFF56549E),
                ],
              ),
            ),
          ),
          Positioned(
            left: 8,
            bottom: 0,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 116, maxWidth: 111),
              child: Image.asset('assets/woman.png'),
            ),
          ),
          Positioned(
            left: 8,
            bottom: 0,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 116, maxWidth: 111),
              child: Image.asset('assets/woman.png'),
            ),
          ),
          Positioned(
            top: 16,
            right: 14,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Do your own test!',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .apply(color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Follow the instructions to\ndo your own test.',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    letterSpacing: 1,
                    height: 1.6,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildButtons() {
    return Row(
      children: [
        BuildButton(
          image: 'assets/call_icon.png',
          text: 'Call Now',
          color: Color(0xFFFF4C58),
        ),
        SizedBox(width: 17),
        BuildButton(
          image: 'assets/msg_icon.png',
          text: 'Send SMS',
          color: Color(0xFF4C79FF),
        ),
      ],
    );
  }

  _buildPrevention(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Prevention',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PreventionItem(
                image: Image.asset('assets/avoid_img.png'),
                text: 'Avoid close\ncontact',
                index: 1,
              ),
              PreventionItem(
                image: Image.asset('assets/clean_img.png'),
                text: 'Clean your\nhands often',
                index: 2,
              ),
              PreventionItem(
                image: Image.asset('assets/wear_img.png'),
                text: 'Wear a\nfacemask',
                index: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildDropDownButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            child: Image.asset('assets/usa_icon.png'),
            backgroundColor: Colors.red,
          ),
          SizedBox(width: 14),
          Text(
            'USA',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton(
              icon: Icon(
                Icons.arrow_drop_down_rounded,
                color: Color(0xFF61688B),
              ),
              iconSize: 36,
              items: [],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  final IconData icon;
  final int index;
  const BottomBarItem({
    Key key,
    this.icon,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: index == 1 ? Color(0xFF4C79FF) : Colors.transparent,
      ),
      child: Icon(
        icon,
        color: index == 1 ? Colors.white : Color(0xFF999FBF),
        size: 26,
      ),
    );
  }
}

class PreventionItem extends StatelessWidget {
  final Image image;
  final String text;
  final int index;
  const PreventionItem({
    Key key,
    this.image,
    this.text,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (index == 1 || index == 2)
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Color(0xFFFFE5EE),
              borderRadius: BorderRadius.circular(50),
            ),
            child: OverflowBox(
              maxWidth: 90,
              maxHeight: 90,
              child: image,
            ),
          ),
        if (index == 3)
          ClipOval(
            child: Container(
              width: 90,
              height: 90,
              color: Color(0xFFFFE5EE),
              child: image,
            ),
          ),
        SizedBox(height: 12),
        Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  const BuildButton({
    Key key,
    this.image,
    this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 20,
            ),
            SizedBox(width: 12),
            Text(
              text,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
