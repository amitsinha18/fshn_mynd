import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(15, 16, 17, 1),
      ),
      height: 60,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //Home
          InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Container(
                width: size.width / 3,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )),
          //Wall
          InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/wall');
              },
              child: Container(
                width: size.width / 3,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.wallpaper,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Wall',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )),
          //User
          InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/user');
              },
              child: Container(
                width: size.width / 3,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.face,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'User',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
