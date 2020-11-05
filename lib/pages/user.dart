import 'package:flutter/material.dart';

import 'package:yt_tutorial_app/services/auth.dart';
import 'package:yt_tutorial_app/pages/login.dart';
import 'landing_page_widgets/user_widgets.dart';
import 'landing_page_widgets/bottom_navBar.dart';

String name = 'HARRY';

// String email = 'email@address.com';
// String number = '981231245';
// String dob = '12/12/12';
// String myPoints = '120';
class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  String _proPic = 'assets/images/pro_pic_1.jpg';
  final Auth _auth1 = Auth();

  double _width = 326;
  // double _height = 52;
  // double _height2 = 52;
  int _ct = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Container(
                  width: 90,
                  height: 93,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(_proPic),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Montserrat Regular',
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          ProfileBox(),
          // RewardBox(),
          HelpBox(),
          Stack(children: [
            GestureDetector(
                onTap: () {
                  _auth1.signOutGoogle();

                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10),
                      child: Container(
                        width: _width,
                        height: 52,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red,
                                blurRadius: 5.0,
                              )
                            ],
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
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
                                Icons.logout,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  fontFamily: 'Montserrat Bold',
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ))
          ]),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
