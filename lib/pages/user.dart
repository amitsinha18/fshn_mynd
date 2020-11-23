import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yt_tutorial_app/services/auth.dart';
import 'package:yt_tutorial_app/pages/login.dart';
import 'landing_page_widgets/bottom_navBar.dart';

String myPoints = '120';
String name = '';
String email = '';
String number = '981231245';
String dob = '12/12/12';
String _proPic = '';
String _uid = "";

//Shared Preference
// String email = 'email@address.com';
// String number = '981231245';
// String dob = '12/12/12';
// String myPoints = '120';
class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final Auth _auth1 = Auth();

  @override
  void initState() {
    _auth1.getCurrentUID().then((val) {
      _uid = val.uid;

      FirebaseFirestore.instance
          .collection("clients")
          .doc(_uid)
          .get()
          .then((value) async {
        setState(() {
          name = value.data()['name'];
          email = value.data()['email'];
          number = value.data()['number'];
          dob = value.data()['dob'];
          _proPic = value.data()['photo'];
        });
      });
    }).catchError((e) {
      print(e);
    });
    super.initState();
  }

  double _width = 326;
  double _height = 52;
  double _height2 = 52;
  int _ct = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 16, 17, 1),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Container(
                  // width: 90,
                  // height: 93,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: NetworkImage(_proPic),
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
                    Navigator.of(context).pushReplacementNamed('/profile');
                  },
                  child: Stack(
                    children: [
                      AnimatedContainer(
                          child: Stack(
                            children: [
                              Positioned(
                                top: 50,
                                left: 50,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Montserrat Regular',
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        email,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Montserrat Regular',
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        number,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Montserrat Regular',
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        dob,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Montserrat Regular',
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 10, left: 60),
                                      child: Text(
                                        '(Press Hold)',
                                        style: TextStyle(color: Colors.white60),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          width: _width,
                          height: _height,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red,
                                  blurRadius: 5.0,
                                )
                              ],
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          duration: Duration(milliseconds: 300)),
                      Positioned(
                          top: 15,
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
                          ))
                    ],
                  )),
            ),
          ]),
          Container(
            child: Stack(children: [
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (_ct == 1) {
                          _height2 = (52 + 50).toDouble();
                          _height = (52);
                          _ct--;
                        } else if (_ct == 0) {
                          _height2 = (52);
                          _ct = 1;
                        }
                      });
                    },
                    onLongPress: () {
                      Navigator.of(context).pushNamed('/reward');
                    },
                    child: Stack(children: [
                      AnimatedContainer(
                          child: Stack(children: [
                            Positioned(
                                top: 50,
                                left: 50,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          // child: Text(
                                          //   '$myPoints myPoints',
                                          //   style: TextStyle(
                                          //     fontFamily: 'Montserrat Regular',
                                          //     fontSize: 14,
                                          //     fontWeight: FontWeight.w400,
                                          //     color: Colors.white,
                                          //   ),
                                          // ),
                                          ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 10, left: 60),
                                        child: Text(
                                          '(Press Hold)',
                                          style:
                                              TextStyle(color: Colors.white60),
                                        ),
                                      )
                                    ]))
                          ]),
                          width: _width,
                          height: _height2,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red,
                                  blurRadius: 5.0,
                                )
                              ],
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          duration: Duration(milliseconds: 300)),
                      Positioned(
                          top: 15,
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
                                  'Refferals',
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
                  )),
            ]),
          ),
          Stack(children: [
            GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('help');
                  print('help tapped');
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
                  ],
                ))
          ]),
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
