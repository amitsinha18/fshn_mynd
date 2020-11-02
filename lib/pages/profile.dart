import 'package:flutter/material.dart';

import 'package:yt_tutorial_app/pages/landing_page_widgets/bottom_navBar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String _proCover = 'assets/images/pro_cover_2.jpg';
  String _proPic = 'assets/images/pro_pic_1.jpg';
  String _proName = 'Harry R';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: 211,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_proCover),
                        fit: BoxFit.cover,
                      )),
                ),
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 93,
                      margin: EdgeInsets.only(top: 170, left: 20),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(_proPic),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 185, left: 20),
                      child: Text(
                        _proName,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat Regular',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 195, left: 20),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white70,
                        size: 20,
                      ),
                    )
                  ],
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
