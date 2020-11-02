import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yt_tutorial_app/pages/login.dart';
import 'package:yt_tutorial_app/services/auth.dart';
import 'file:///C:/Users/Mohammed%20Jassim/AndroidStudioProjects/flutter_test-30864d5e5026c7a931cd1b8a5684d86b267df51e/lib/pages/landing_page_widgets/bottom_navBar.dart';


class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final Auth _auth1 = Auth();
  String _proPic = 'assets/images/pro_pic_1.jpg';
  double _width = 326;
  double _height = 52;
  double _height2 = 52;
  String _name = 'Harry R';
  int _ct = 0;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signOut() async {
    await _auth.signOut();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60, left: 20),
                width: 90,
                height: 93,
                child: CircleAvatar(
                  backgroundImage: AssetImage(_proPic),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 110, top: 115),
                child: Text(
                  _name,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat Regular',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          //Profile Box
          Stack(children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 100),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (_ct == 0) {
                      _height = (52 + 110).toDouble();
                      _height2 = (52);
                      _ct++;
                    } else if (_ct == 1) {
                      _height = (52);
                      _ct = 0;
                    }
                  });
                },
                onLongPress: () {
                  Navigator.of(context).pushNamed('/profile');
                },
                child: AnimatedContainer(
                    width: _width,
                    height: _height,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(91, 134, 0, 1),
                        borderRadius: BorderRadius.circular(20)),
                    duration: Duration(milliseconds: 300)),
              ),
            ),
            Positioned(
                top: 115,
                left: 20,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          fontFamily: 'Montserrat Bold',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )),
          ]),
          //Reward Box
          Stack(children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (_ct == 0) {
                      _height2 = (52 + 110).toDouble();
                      _height = (52);
                      _ct++;
                    } else if (_ct == 1) {
                      _height2 = (52);
                      _ct = 0;
                    }
                  });
                },
                onLongPress: () {
                  Navigator.of(context).pushNamed('/reward');
                },
                child: AnimatedContainer(
                    width: _width,
                    height: _height2,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(91, 134, 0, 1),
                        borderRadius: BorderRadius.circular(20)),
                    duration: Duration(milliseconds: 300)),
              ),
            ),
            Positioned(
                top: 25,
                left: 20,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.card_giftcard,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'Rewads Centre',
                        style: TextStyle(
                          fontFamily: 'Montserrat Bold',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )),
          ]),
          //Saved Deals
          Stack(children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('savedDeals');
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10),
                  child: Container(
                    width: _width,
                    height: 52,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(91, 134, 0, 1),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
            Positioned(
                top: 25,
                left: 20,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.saved_search,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'Saved Deals',
                        style: TextStyle(
                          fontFamily: 'Montserrat Bold',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )),
          ]),
          //Help
          Stack(children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/help');
              },
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 10),
                child: Container(
                  width: _width,
                  height: 52,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(91, 134, 0, 1),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Positioned(
                top: 25,
                left: 20,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.help_outline,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'Help',
                        style: TextStyle(
                          fontFamily: 'Montserrat Bold',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )),
          ]),
          Stack(
            children: [
              Positioned(
                child: InkWell(
                  onTap: () {
                    _auth1.signOutGoogle();
                    _signOut();
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    // margin: EdgeInsets.only(top: 130, right: 20),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          fontFamily: 'Montserrat Bold',
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
