import 'package:flutter/material.dart';

String _topBox1 = 'assets/images/326x150_1.png';
String _topBox2 = 'assets/images/326x150_2.png';
String _topBox3 = 'assets/images/326x150_3.png';

String _longBox1 = 'assets/images/157x240_1.png';
String _longBox2 = 'assets/images/157x240_2.png';
String _longBox3 = 'assets/images/157x240_3.png';

String _smBox1 = 'assets/images/153x115_1.png';
String _smBox2 = 'assets/images/153x115_2.png';
String _smBox3 = 'assets/images/153x115_3.png';
String _smBox4 = 'assets/images/153x115_4.png';
String _smBox5 = 'assets/images/153x115_5.png';
String _smBox6 = 'assets/images/153x115_6.png';

class PatternBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(_topBox1), fit: BoxFit.fill)),
            margin: EdgeInsets.only(bottom: 10),
            width: 326,
            height: 150,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(),
                width: 157,
                height: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        image: AssetImage(_longBox1), fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: 153,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: AssetImage(_smBox1), fit: BoxFit.fill)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 153,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: AssetImage(_smBox2), fit: BoxFit.cover)),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class PatternBox2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(_topBox2), fit: BoxFit.fill)),
            margin: EdgeInsets.only(bottom: 10),
            width: 326,
            height: 150,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(),
                width: 157,
                height: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        image: AssetImage(_longBox2), fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: 153,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: AssetImage(_smBox3), fit: BoxFit.fill)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 153,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: AssetImage(_smBox4), fit: BoxFit.fill)),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class PatternBox3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(_topBox3), fit: BoxFit.fill)),
            margin: EdgeInsets.only(bottom: 10),
            width: 326,
            height: 150,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(),
                width: 157,
                height: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        image: AssetImage(_longBox3), fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: 153,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: AssetImage(_smBox5), fit: BoxFit.fill)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 153,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: AssetImage(_smBox6), fit: BoxFit.fill)),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
