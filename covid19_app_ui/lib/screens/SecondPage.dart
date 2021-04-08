import 'package:flutter/material.dart';
import 'package:covid19_app_ui/widgets/export_widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF473F97),
        body: Container(
          child: Column(
            children: [
              _buildAppBar(),
              _buildTitle(),
              BuildSwitch(),
              SizedBox(height: 34),
              BuildModeIndicator(),
              _buildGridCard(),
              BuildChart(),
            ],
          ),
        ),
      ),
    );
  }

  _buildTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Text(
        'Statistics',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: .7,
          color: Colors.white,
        ),
      ),
    );
  }

  _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Row(
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
      ),
    );
  }

  _buildGridCard() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 34, 24, 0),
      width: double.infinity,
      height: 280,
      child: StaggeredGridView.count(
        crossAxisCount: 6,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          BuildCard(
            title: 'Affected',
            number: '336,851',
            numberSize: 24,
            color: Color(0xFFFFB259),
          ),
          BuildCard(
            title: 'Death',
            number: '9,620',
            numberSize: 24,
            color: Color(0xFFFF5959),
          ),
          BuildCard(
            title: 'Recovered',
            number: '17,977',
            numberSize: 20,
            color: Color(0xFF4CD97B),
          ),
          BuildCard(
            title: 'Active',
            number: '301,251',
            numberSize: 20,
            color: Color(0xFF4CB5FF),
          ),
          BuildCard(
            title: 'Serious',
            number: '8,702',
            numberSize: 20,
            color: Color(0xFF9059FF),
          ),
        ],
        staggeredTiles: [
          StaggeredTile.extent(3, 100),
          StaggeredTile.extent(3, 100),
          StaggeredTile.extent(2, 100),
          StaggeredTile.extent(2, 100),
          StaggeredTile.extent(2, 100),
        ],
      ),
    );
  }
}
