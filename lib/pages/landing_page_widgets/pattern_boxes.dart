import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

String _topBox1 = '';
String _smBox1 = '';
String _smBox2 = '';
String _longBox1 = '';

String _topBox2 = '';
String _longBox2 = '';
String _smBox3 = '';
String _smBox4 = '';

String _topBox3 = '';
String _longBox3 = '';
String _smBox5 = '';
String _smBox6 = '';

class PatternBox1 extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<PatternBox1> {
  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection("crol")
        .doc('crol1')
        .get()
        .then((value) async {
      setState(() {
        _topBox1 = value.data()['image'];
      });
    });
    FirebaseFirestore.instance
        .collection("crol")
        .doc('crol2')
        .get()
        .then((value) async {
      _longBox1 = await value.data()['image'];
    });
    FirebaseFirestore.instance
        .collection("crol")
        .doc('crol3')
        .get()
        .then((value) async {
      _smBox1 = await value.data()['image'];
    });
    FirebaseFirestore.instance
        .collection("crol")
        .doc('crol4')
        .get()
        .then((value) async {
      _smBox2 = await value.data()['image'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/adPage');
              },
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(_topBox1), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(6)),
                margin: EdgeInsets.only(bottom: 10),
                width: 326,
                height: 150,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/adPage');
                },
                child: Container(
                  margin: EdgeInsets.only(),
                  width: 157,
                  height: 240,
                  // child: Stack(
                  //   children: [
                  //     Center(child: CircularProgressIndicator()),
                  //     Center(
                  //       child: FadeInImage.memoryNetwork(
                  //           placeholder: kTransparentImage, image: _longBox1),
                  //     ),
                  //   ],
                  // ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(_longBox1), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(6)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/adPage');
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: 153,
                        height: 115,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(_smBox1), fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/adPage');
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 153,
                        height: 115,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(_smBox2), fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(6)),
                      ),
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

class PatternBox2 extends StatefulWidget {
  @override
  _PatternBox2State createState() => _PatternBox2State();
}

class _PatternBox2State extends State<PatternBox2> {
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("beauty")
        .doc('beauty1')
        .get()
        .then((value) async {
      setState(() {
        _topBox2 = value.data()['image'];
      });
    });
    FirebaseFirestore.instance
        .collection("beauty")
        .doc('beauty2')
        .get()
        .then((value) async {
      _longBox2 = value.data()['image'];
    });
    FirebaseFirestore.instance
        .collection("beauty")
        .doc('beauty3')
        .get()
        .then((value) async {
      _smBox3 = value.data()['image'];
    });
    FirebaseFirestore.instance
        .collection("beauty")
        .doc('beauty4')
        .get()
        .then((value) async {
      _smBox4 = value.data()['image'];
    });
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/adPage');
            },
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        _topBox2,
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(6)),
              margin: EdgeInsets.only(bottom: 10),
              width: 326,
              height: 150,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/adPage');
                },
                child: Container(
                  margin: EdgeInsets.only(),
                  width: 157,
                  height: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(_longBox2), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(6)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/adPage');
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: 153,
                        height: 115,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(_smBox3), fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/adPage');
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 153,
                        height: 115,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: NetworkImage(_smBox4), fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
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

class PatternBox3 extends StatefulWidget {
  @override
  _PatternBox3State createState() => _PatternBox3State();
}

class _PatternBox3State extends State<PatternBox3> {
  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection("lifestyle")
        .doc('lifestyle1')
        .get()
        .then((value) async {
      setState(() {
        _topBox3 = value.data()['image'];
      });
    });
    FirebaseFirestore.instance
        .collection("lifestyle")
        .doc('lifestyle2')
        .get()
        .then((value) async {
      _longBox3 = value.data()['image'];
    });
    FirebaseFirestore.instance
        .collection("lifestyle")
        .doc('lifestyle3')
        .get()
        .then((value) async {
      _smBox5 = value.data()['image'];
    });
    FirebaseFirestore.instance
        .collection("lifestyle")
        .doc('lifestyle4')
        .get()
        .then((value) async {
      _smBox6 = value.data()['image'];
    });
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/adPage');
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: NetworkImage(_topBox3), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(6)),
              margin: EdgeInsets.only(bottom: 10),
              width: 326,
              height: 150,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/adPage');
                },
                child: Container(
                  margin: EdgeInsets.only(),
                  width: 157,
                  height: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(_longBox3), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(6)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/adPage');
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: 153,
                        height: 115,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(_smBox5), fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/adPage');
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 153,
                        height: 115,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(_smBox6), fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(6)),
                      ),
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
