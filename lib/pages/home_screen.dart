import 'package:flutter/material.dart';

import 'package:yt_tutorial_app/pages/landing_page_widgets/cat_carousel.dart';
import 'package:yt_tutorial_app/pages/landing_page_widgets/featured1.dart';
import 'package:yt_tutorial_app/pages/landing_page_widgets/pattern_boxes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'MYND',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: "Montserrat Bold",
          ),
        ),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: FeatBanner(),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: CatBanner(),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 220),
              child: Text(
                'FASHION',
                style: TextStyle(
                    fontFamily: "Montserrat Bold",
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            Container(
              child: PatternBox1(),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 220),
              child: Text(
                'BEAUTY',
                style: TextStyle(
                    fontFamily: "Montserrat Bold",
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            Container(
              child: PatternBox2(),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 220),
              child: Text(
                'LIFESTYLE',
                style: TextStyle(
                    fontFamily: "Montserrat Bold",
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            Container(
              child: PatternBox3(),
            )
          ],
        ),
      ]),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 70),
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () => print('Container Pressed'),
                        child: Container(
                          child: Icon(
                            Icons.home,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Text(
                        'Home',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/wall');
                        },
                        child: Container(
                          child: Icon(
                            Icons.wallpaper,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        'Wall',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 70),
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/profile');
                        },
                        child: Container(
                          child: Icon(
                            Icons.face,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        'Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
