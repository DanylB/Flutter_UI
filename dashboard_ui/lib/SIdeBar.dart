import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'palette.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF181717),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView(
          primary: false,
          children: [
            _buildLogo(),
            const SizedBox(height: 40),
            _buildTopMenu(),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.fromLTRB(22, 0, 15, 0),
              child: Divider(
                color: Color(0xFF878787),
              ),
            ),
            _buildBottomMenu(),
          ],
        ),
      ),
    );
  }

  Padding _buildBottomMenu() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(36, 30, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'MY PROFILE',
            style: kMenuTitleProfileStyle,
          ),
          const SizedBox(height: 25),
          const MenuItem(
            title: 'My Portfolio',
            imagePath: 'assets/portfolio_icon.svg',
            isActive: false,
          ),
          const SizedBox(height: 25),
          const MenuItem(
            title: 'Saved',
            imagePath: 'assets/saved_icon.svg',
            isActive: false,
          ),
          const SizedBox(height: 30),
          const MenuItem(
            title: 'History',
            imagePath: 'assets/history_icon.svg',
            isActive: false,
          ),
          const SizedBox(height: 30),
          const MenuItem(
            title: 'Settings',
            imagePath: 'assets/settings_icon.svg',
            isActive: false,
          ),
        ],
      ),
    );
  }

  Padding _buildTopMenu() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(36, 0, 0, 0),
      child: Column(children: const [
        MenuItem(
          title: 'Dashboard',
          imagePath: 'assets/star_icon.svg',
          isActive: true,
        ),
        SizedBox(height: 25),
        MenuItem(
          title: 'Market',
          imagePath: 'assets/market_icon.svg',
          isActive: false,
        ),
        SizedBox(height: 25),
        MenuItem(
          title: 'Active Bid',
          imagePath: 'assets/active_bid_icon.svg',
          isActive: false,
        ),
        SizedBox(height: 25),
        MenuItem(
          title: 'Favorites',
          imagePath: 'assets/favorite_icon.svg',
          isActive: false,
        ),
      ]),
    );
  }

  Container _buildLogo() {
    return Container(
      padding: const EdgeInsets.fromLTRB(22, 33, 0, 0),
      alignment: Alignment.topLeft,
      child: Text('BUYNFT', style: kLogoStyle),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool isActive;

  const MenuItem({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imagePath,
          color: isActive ? const Color(0xFFD03852) : const Color(0xFF878787),
          width: 30,
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: isActive ? kMenuActiveItemStyle : kMenuItemStyle,
        ),
      ],
    );
  }
}
