import 'package:flutter/material.dart';
import 'package:yt_tutorial_app/pages/landing_page_widgets/bottom_navBar.dart';

String _onRd = 'assets/images/gold_rd.png';
String _offRd = 'assets/images/silver_rd.png';
String _shareCtr = '6';
String _refferlsCtr = '12';
String _task1 = 'Task No. One';
String _task2 = 'Task No. Two';
String _task3 = 'Task No. Three';

String myPoints = '120';

class RewardPage extends StatefulWidget {
  @override
  _RewardPageState createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * .23,
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child: Text(
                    'Rewards',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat Bold',
                      fontSize: 28,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          myPoints,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat Bold',
                            fontSize: 24,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        child: Text(
                          'myPoints',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat Regular',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Sign in for points.',
                            style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              _buildOnRd(),
                              _buildOnRd(),
                              _buildOnRd(),
                              _buildOffRd(),
                              _buildOffRd(),
                              _buildOffRd(),
                              _buildOffRd(),
                              _buildOffRd(),
                              _buildOffRd(),
                              _buildOffRd()
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Day 1',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 8,
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Day 2',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 8,
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Day 3',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 8,
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Day 4',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 8,
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Day 5',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 8,
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Day 6',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 8,
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Day 7',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 8,
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Day 8',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 8,
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Day 9',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 8,
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Text(
                                  'Day 10',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 8,
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(
                        left: size.width * .05, top: size.height * .18),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    width: size.width * .9,
                    height: size.height * .08,
                  )
                ])
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Shares',
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        Text(
                          _shareCtr,
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              fontSize: 18,
                              color: Colors.black),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 5.0, color: Colors.white)
                        ]),
                    width: 136,
                    height: 59,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Shares',
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        Text(
                          _refferlsCtr,
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              fontSize: 18,
                              color: Colors.black),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 5.0, color: Colors.white)
                        ]),
                    width: 136,
                    height: 59,
                  ),
                ],
              ),
            ),
            //Todays Tasks Box
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 301,
              height: 226,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      'TODAYS TASK',
                      style: TextStyle(
                          fontFamily: 'Montserrat Regular',
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                    ),
                  ),
                  _buildTaskWidget(_task1),
                  _buildTaskWidget(_task2),
                  _buildTaskWidget(_task3),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 231,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Redeem Rewards',
                  style: TextStyle(
                    fontFamily: 'Montserrat Bold',
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                alignment: Alignment.center,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

Widget _buildOffRd() {
  return Container(
    margin: EdgeInsets.only(top: 5, left: 5),
    width: 26,
    height: 24,
    decoration:
        BoxDecoration(image: DecorationImage(image: AssetImage(_offRd))),
  );
}

Widget _buildOnRd() {
  return Container(
    margin: EdgeInsets.only(top: 5, left: 5),
    width: 26,
    height: 24,
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(_onRd))),
  );
}

Widget _buildTaskWidget(String tasks) {
  return Container(
    width: 285,
    margin: EdgeInsets.only(top: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildOnRd(),
        Container(
          margin: EdgeInsets.only(top: 8, left: 8),
          child: Text(
            tasks,
            style: TextStyle(
                fontFamily: 'Montserrat Regular',
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 5),
          width: 75,
          height: 34,
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 187, 11, 1),
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            'Claim',
            style: TextStyle(
                fontFamily: 'Montserrat Regular',
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
