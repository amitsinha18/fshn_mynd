import 'package:flutter/material.dart';

double _width = 326;

String myPoints = '120';
String name = 'HARRY';
String email = 'email@address.com';
String number = '981231245';
String dob = '12/12/12';

class HelpBox extends StatefulWidget {
  @override
  _HelpBoxState createState() => _HelpBoxState();
}

class _HelpBoxState extends State<HelpBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
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
    );
  }
}

class ProfileBox extends StatefulWidget {
  @override
  _ProfileBoxState createState() => _ProfileBoxState();
}

class _ProfileBoxState extends State<ProfileBox> {
  double _height = 52;
  double _height2 = 52;
  int _ct = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
                        if (_ct == 0) {
                          _height2 = (52 + 50).toDouble();
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
                                        child: Text(
                                          '$myPoints myPoints',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat Regular',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
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
                                  'My Rewards',
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
        ],
      ),
    );
  }
}

// class RewardBox extends StatefulWidget {
//   @override
//   _RewardBoxState createState() => _RewardBoxState();
// }

// class _RewardBoxState extends State<RewardBox> {
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
