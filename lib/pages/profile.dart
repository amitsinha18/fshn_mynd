import 'package:flutter/material.dart';

import 'package:yt_tutorial_app/pages/landing_page_widgets/bottom_navBar.dart';

String proPic = 'assets/images/pro_pic_1.jpg';
String proName = ('Harry R').toUpperCase();
String email = 'email@address.com';
String number = '921312303';
String dob = '12/12/21';

class ProfilePage extends StatefulWidget {
  // final String _proCover = 'assets/images/pro_cover_2.jpg';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Center(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: size.height * .3,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     image: AssetImage(_proCover), fit: BoxFit.cover),
                  color: Colors.white,
                ),
              ),
              Center(
                  child: InkWell(
                      onTap: () {
                        print('profile pic tapped');
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 160),
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(proPic),
                            fit: BoxFit.contain,
                          ),
                        ),
                      )))
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              child: Text(
                proName,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Montserrat Regular',
                    fontWeight: FontWeight.w600),
              )),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  width: 300,
                  child: TextFormField(
                    initialValue: email,
                    style: TextStyle(
                        color: Color.fromRGBO(252, 252, 252, 1),
                        fontFamily: 'Montserrat Bold'),
                    decoration: _buildInputDecoration('', ''),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  child: TextFormField(
                    initialValue: number,
                    style: TextStyle(
                        color: Color.fromRGBO(252, 252, 252, 1),
                        fontFamily: 'Montserrat Bold'),
                    decoration: _buildInputDecoration('', ''),
                  ),
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    initialValue: dob,
                    style: TextStyle(
                        color: Color.fromRGBO(252, 252, 252, 1),
                        fontFamily: 'Montserrat Bold'),
                    decoration: _buildInputDecoration('', ''),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/user');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Save',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat Bold', fontSize: 18),
                      ),
                    ),
                    width: 100,
                    height: 50,
                  ),
                ),
                SizedBox(width: 40),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/user');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 5.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Back',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat Bold', fontSize: 18),
                      ),
                    ),
                    width: 100,
                    height: 50,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

InputDecoration _buildInputDecoration(String hint, String iconPath) {
  return InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(252, 252, 252, 1))),
      hintText: hint,
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(151, 151, 151, 1))),
      hintStyle: TextStyle(color: Color.fromRGBO(252, 252, 252, 1)),
      icon: iconPath != '' ? Image.asset(iconPath) : null,
      errorStyle: TextStyle(color: Color.fromRGBO(248, 218, 87, 1)),
      errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(248, 218, 87, 1))),
      focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(248, 218, 87, 1))));
}
