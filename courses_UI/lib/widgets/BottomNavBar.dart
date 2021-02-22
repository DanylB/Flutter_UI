import 'package:flutter/material.dart';

enum BottomIcons { Home, Search, Polls, User }

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  BottomIcons bottomIcons = BottomIcons.Home;

  @override
  Widget build(BuildContext context) {
    final sizeW = MediaQuery.of(context).size.width;

    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Container(
          width: sizeW * .9,
          padding: const EdgeInsets.fromLTRB(26, 23, 26, 20),
          decoration: kBottomBarStyle,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHomeItem(),
              _buildSearchItem(),
              _buildPollsItem(),
              _buildUserItem(),
            ],
          ),
        ),
      ),
    );
  }

  _buildUserItem() {
    return GestureDetector(
      onTap: () {
        setState(() {
          bottomIcons = BottomIcons.User;
        });
      },
      child: bottomIcons == BottomIcons.User
          ? Container(
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/user_icon.png'),
                    color: Colors.blue,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 12),
                  Text(
                    'User',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2F80ED),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              width: 50,
              color: Colors.white,
              child: Image(
                image: AssetImage('assets/user_icon.png'),
                width: 20,
                height: 20,
              ),
            ),
    );
  }

  _buildPollsItem() {
    return GestureDetector(
      onTap: () {
        setState(() {
          bottomIcons = BottomIcons.Polls;
        });
      },
      child: bottomIcons == BottomIcons.Polls
          ? Container(
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/polls_icon.png'),
                    color: Colors.blue,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Polls',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2F80ED),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              width: 50,
              color: Colors.white,
              child: Image(
                image: AssetImage('assets/polls_icon.png'),
                width: 20,
                height: 20,
              ),
            ),
    );
  }

  _buildSearchItem() {
    return GestureDetector(
      onTap: () {
        setState(() {
          bottomIcons = BottomIcons.Search;
        });
      },
      child: bottomIcons == BottomIcons.Search
          ? Container(
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/search_icon.png'),
                    color: Colors.blue,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2F80ED),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              width: 50,
              color: Colors.white,
              child: Image(
                image: AssetImage('assets/search_icon.png'),
                width: 20,
                height: 20,
              ),
            ),
    );
  }

  _buildHomeItem() {
    return GestureDetector(
      onTap: () {
        setState(() {
          bottomIcons = BottomIcons.Home;
        });
      },
      child: bottomIcons == BottomIcons.Home
          ? Container(
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/home_icon.png'),
                    color: Colors.blue,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2F80ED),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              width: 50,
              color: Colors.white,
              child: Image(
                image: AssetImage('assets/home_icon.png'),
                width: 20,
                height: 20,
              ),
            ),
    );
  }

  final kBottomBarStyle = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(50),
    boxShadow: [
      BoxShadow(
        offset: Offset(0, 32),
        color: Color(0xFF0A3875).withOpacity(.08),
        blurRadius: 32,
      )
    ],
  );
}
