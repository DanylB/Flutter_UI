import 'package:dashboard_ui/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map dataTrendingNFT = {
      'image_path': [
        'assets/image_1.png',
        'assets/image_2.png',
        'assets/image_3.png',
        'assets/image_4.png',
      ],
      'title': [
        'Wrost Artwork',
        'Muaal Artwork',
        'Wawe Artwork',
        'Trend Artwork'
      ],
      'avatar_path': [
        'assets/avatar_1.png',
        'assets/avatar_2.png',
        'assets/avatar_2.png',
        'assets/avatar_1.png'
      ],
      'avtor_name': ['Tom Jones', 'Mufasa', 'Iluvu', 'Rootie'],
      'price': [3.5, 4.0, 4.2, 3.7],
    };

    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 33, 0, 0),
      child: Column(children: [
        _buildSearchBar(),
        Expanded(
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              const SizedBox(height: 30),
              _buildMainImage(),
              const SizedBox(height: 30),
              Text(
                'Trending NFT',
                style: kGridViewTitleTextStyle,
              ),
              const SizedBox(height: 100),
              SizedBox(
                height: 600,
                child: GridView.builder(
                  clipBehavior: Clip.none,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 50,
                    mainAxisSpacing: 60,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) => GridItem(
                    imagePath: dataTrendingNFT['image_path'][index],
                    title: dataTrendingNFT['title'][index],
                    avtorName: dataTrendingNFT['avtor_name'][index],
                    avatarPath: dataTrendingNFT['avatar_path'][index],
                    price: dataTrendingNFT['price'][index],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }

  Stack _buildMainImage() {
    return Stack(
      children: [
        Image.asset('assets/title_image.png'),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 15, 0, 0),
                child: Text("Create your\nown NFT", style: kMainImageTextStyle),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                child: Container(
                  width: 130,
                  height: 50,
                  decoration: kMainImageButtonStyle,
                  child: Center(
                      child: Text(
                    'Start here',
                    style: kMainImageButtonTextStyle,
                  )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _buildSearchBar() {
    return Container(
      height: 63,
      padding: const EdgeInsets.fromLTRB(68, 0, 0, 0),
      decoration: kSearchBarBoxStyle,
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/search_icon.svg',
            width: 28,
          ),
          const SizedBox(width: 19),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'search keyword here',
                hintStyle: kSearchBarTextStyle,
              ),
              style: kSearchBarTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatefulWidget {
  final String imagePath;
  final String title;
  final String avtorName;
  final String avatarPath;
  final double price;
  const GridItem({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.avtorName,
    required this.price,
    required this.avatarPath,
  }) : super(key: key);

  @override
  State<GridItem> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isHover = false;

  void hoverTrue() => setState(() => isHover = true);
  void hoverFalse() => setState(() => isHover = false);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (PointerEvent details) => hoverTrue(),
      onExit: (PointerEvent details) => hoverFalse(),
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          width: 280,
          height: 220,
          decoration: kGridItemShadowBoxStyle,
          padding: const EdgeInsets.fromLTRB(27, 0, 0, 14),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title, style: kGridItemTitleStyle),
                const SizedBox(height: 5),
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  CircleAvatar(
                    child: Image.asset(widget.avatarPath),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.avtorName,
                    style: kAvtorNameStyle,
                  ),
                  const SizedBox(width: 30),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: kGridItemPriceBoxStyle,
                    child: Row(children: [
                      SvgPicture.asset('assets/ETH_icon.svg'),
                      const SizedBox(width: 5),
                      Text(
                        '${widget.price} ETH',
                        style: kGridItemPriceTextStyle,
                      ),
                    ]),
                  ),
                ]),
              ]),
        ),
        Positioned(
          top: -110,
          left: 10,
          child: SizedBox(
            width: 260,
            height: 260,
            child: Stack(children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(widget.imagePath),
              ),
              isHover
                  ? Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(35, 8, 35, 8),
                          decoration: kGridItemImageTextBoxStyle,
                          child: Text(
                            'Place a bid',
                            style: kGridImageTextStyle,
                          )),
                    )
                  : const SizedBox(),
            ]),
          ),
        ),
      ]),
    );
  }
}
