import 'package:flutter/material.dart';
import 'package:yt_tutorial_app/pages/landing_page_widgets/bottom_navBar.dart';

class RewardPage extends StatefulWidget {
  @override
  _RewardPageState createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 16, 17, 1),
      body: ListView(
        children: [
          Container(
            color: Color.fromRGBO(15, 16, 17, 1),
            child: Column(
              children: [
                //Top Banner Start
                Container(
                  color: Color.fromRGBO(46, 42, 55, 1),
                  width: size.width,
                  height: size.height * .3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 116,
                        height: 116,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/giftBox.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: Text(
                          'Refer A Friend',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto Light',
                            color: Colors.white,
                            fontSize: 26,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Text(
                          '(Click Here)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Roboto Light',
                              color: Color.fromRGBO(106, 106, 106, 1)),
                        ),
                      )
                    ],
                  ),
                ),
                //Top Banner End

                //Bottom Section

                Container(
                  width: size.width,
                  height: size.height,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
