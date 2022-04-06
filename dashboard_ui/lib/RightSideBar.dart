import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'palette.dart';

class RightSideBar extends StatelessWidget {
  const RightSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map dataTopCreators = {
      'avatar_path': [
        'assets/avatar_4.png',
        'assets/avatar_5.png',
        'assets/avatar_6.png',
        'assets/avatar_7.png',
        'assets/avatar_8.png',
        'assets/avatar_9.png',
        'assets/avatar_10.png',
        'assets/avatar_11.png',
      ],
      'avtor_name': [
        'dtom_boy',
        'reverse234',
        'eject419',
        'mrdogood',
        'iluvu',
        'babyjones',
        'pushinp',
        'dtom_boy',
      ],
    };
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 40, 20, 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: _buildUserNameMenu(),
          ),
          const SizedBox(height: 40),
          _buildWalletBalanceCard(),
          _buildTopCreators(dataTopCreators),
        ],
      ),
    );
  }

  Expanded _buildTopCreators(Map<dynamic, dynamic> dataTopCreators) {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
              color: const Color(0xFF181717),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TOP CREATORS',
                      style: kTopCreatorsStyle,
                    ),
                    Text(
                      'See all',
                      style: kSeeAllStyle,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: ((context, index) => Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/avatar_${index + 4}.png',
                                  width: 40),
                              const SizedBox(width: 10),
                              Text(dataTopCreators['avtor_name'][index],
                                  style: kAvtorNameStyle),
                              const SizedBox(width: 30),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 13, 20, 13),
                                decoration: kFollowButtonStyle,
                                child: Text(
                                  'Follow',
                                  style: kGridItemPriceTextStyle,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildWalletBalanceCard() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      width: double.infinity,
      height: 200,
      decoration: kWalletBalanceBoxStyle,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Walet Balance',
              style: kWalletBalanceTextStyle,
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/char_line.svg')),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/ETH_icon.svg',
                  height: 40,
                ),
                const SizedBox(width: 10),
                Text(
                  '67.245',
                  style: kWalletBalanceStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildUserNameMenu() {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/notification_icon.svg',
          width: 45,
        ),
        const SizedBox(width: 20),
        CircleAvatar(
          radius: 24,
          child: Image.asset(
            'assets/avatar_3.png',
            width: 100,
          ),
        ),
        const SizedBox(width: 20),
        Text(
          'Tommy Wales',
          style: kUserNameTextStyle,
        ),
      ],
    );
  }
}
