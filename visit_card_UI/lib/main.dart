import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'nm_box.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(textTheme: TextTheme(body1: TextStyle(color: fCL))),
      home: MainCard(),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mC,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NMButton(icon: Icons.arrow_back),
                    NMButton(icon: Icons.menu),
                  ],
                ),
                AvatarImage(),
                SizedBox(height: 15),
                Text(
                  'Steven Dz',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade600),
                ),
                Text(
                  'Amsterdam',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Mobile App Developer and Game Designer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NMButton(icon: FontAwesomeIcons.facebook),
                    SizedBox(width: 25),
                    NMButton(icon: FontAwesomeIcons.twitter),
                    SizedBox(width: 25),
                    NMButton(icon: FontAwesomeIcons.instagram),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    SocialBox(
                      icon: FontAwesomeIcons.dribbble,
                      count: '35',
                      category: 'shots',
                    ),
                    SizedBox(width: 15),
                    SocialBox(
                      icon: FontAwesomeIcons.userAlt,
                      count: '1.2k',
                      category: 'followers',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SocialBox(
                      icon: FontAwesomeIcons.heart,
                      count: '5,1',
                      category: 'likes',
                    ),
                    SizedBox(width: 15),
                    SocialBox(
                      icon: FontAwesomeIcons.user,
                      count: '485',
                      category: 'folowing',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SocialBox(
                      icon: FontAwesomeIcons.glassWhiskey,
                      count: '97',
                      category: 'buckets',
                    ),
                    SizedBox(width: 15),
                    SocialBox(
                      icon: FontAwesomeIcons.folderOpen,
                      count: '7',
                      category: 'project',
                    ),
                  ],
                ),
                SizedBox(height: 65),
              ],
            ),
            DraggableScrollableSheet(
              initialChildSize: .07,
              minChildSize: .07,
              maxChildSize: .4,
              builder: (BuildContext context, scroll) {
                return Container(
                  decoration: nMbox,
                  child: ListView(
                    controller: scroll,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Icon(Icons.share, color: fCL),
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Credits to Planet X on Dribbble\nofr this design',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey.shade600,
                              ),
                            ),
                            SizedBox(height: 35),
                            Container(
                              width: 225,
                              padding: EdgeInsets.all(10),
                              decoration: nMboxInvert,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(FontAwesomeIcons.facebookF, color: fCL),
                                  Icon(FontAwesomeIcons.twitter, color: fCL),
                                  Icon(FontAwesomeIcons.instagram, color: fCL),
                                  Icon(FontAwesomeIcons.whatsapp, color: fCL),
                                ],
                              ),
                            ),
                            SizedBox(height: 35),
                            FaIcon(
                              FontAwesomeIcons.copy,
                              color: Colors.pink.shade800,
                            ),
                            Text(
                              'Copy link',
                              style: TextStyle(color: Colors.grey.shade600),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String category;

  const SocialBox({this.icon, this.count, this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: nMboxInvert,
        child: Row(
          children: [
            FaIcon(
              icon,
              color: Colors.pink.shade800,
              size: 20,
            ),
            SizedBox(width: 8),
            Text(
              count,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 3),
            Text(category),
          ],
        ),
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/avatar.png'),
            ),
          ),
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  final IconData icon;

  const NMButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: nMbox,
      child: Icon(icon, color: fCL),
    );
  }
}
