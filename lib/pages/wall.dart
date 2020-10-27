import 'package:flutter/material.dart';

class WallPage extends StatefulWidget {
  @override
  _WallPageState createState() => _WallPageState();
}

class _WallPageState extends State<WallPage> {
  String _wallPosts1 = 'assets/images/324x315_1.jpg';
  String _wallPosts2 = 'assets/images/324x315_2.jpg';
  String _postCaption = 'CATPION';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'WALL',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: "Montserrat Bold",
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            //Category Box Design Start!!!
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      //Image Container
                      Container(
                        width: 324,
                        height: 315,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6)),
                            image: DecorationImage(
                                image: AssetImage(_wallPosts1),
                                fit: BoxFit.fill)),
                      ),
                      //Bottom_white Box
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 70),
                              child: IconButton(
                                icon: Icon(Icons.star),
                                color: Colors.pinkAccent,
                                iconSize: 35,
                                tooltip: 'Like Post',
                                onPressed: () {
                                  print('Book Pressed');
                                },
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(),
                              child: Text(
                                _postCaption,
                                style: TextStyle(
                                    fontFamily: 'Montserrat Regular',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child: IconButton(
                                icon: Icon(Icons.share),
                                color: Colors.blueGrey,
                                iconSize: 35,
                                tooltip: 'Share Post',
                                onPressed: () {
                                  print('Share Pressed');
                                },
                              ),
                            ),
                          ],
                        ),
                        height: 70,
                        width: 324,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      //Image Container
                      Container(
                        width: 324,
                        height: 315,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6)),
                            image: DecorationImage(
                                image: AssetImage(_wallPosts2),
                                fit: BoxFit.fill)),
                      ),
                      //Bottom_white Box
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 70),
                              child: IconButton(
                                icon: Icon(Icons.star),
                                color: Colors.pinkAccent,
                                iconSize: 35,
                                tooltip: 'Like Post',
                                onPressed: () {
                                  print('Book Pressed');
                                },
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(),
                              child: Text(
                                _postCaption,
                                style: TextStyle(
                                    fontFamily: 'Montserrat Regular',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child: IconButton(
                                icon: Icon(Icons.share),
                                color: Colors.blueGrey,
                                iconSize: 35,
                                tooltip: 'Share Post',
                                onPressed: () {
                                  print('Share Pressed');
                                },
                              ),
                            ),
                          ],
                        ),
                        height: 70,
                        width: 324,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              ),
                            ]),
                      )
                    ],
                  ),
                )
              ],
            ) //Category Box Design End
          ],
        ),
      ),
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
                        onTap: () {
                          Navigator.of(context).pushNamed('/home');
                        },
                        child: Container(
                          child: Icon(
                            Icons.home,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        'Home',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
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
                        onTap: () {},
                        child: Container(
                          child: Icon(
                            Icons.wallpaper,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Text(
                        'Wall',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
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
