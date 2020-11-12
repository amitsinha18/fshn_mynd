import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String _topBox1 = '';
String _smBox1 = '';
String _smBox2 = '';
String _longBox1 = '';

String _topBox2 = '';
String _longBox2 = '';
String _smBox3 = '';
String _smBox4 = '';

String _topBox3 = 'assets/images/placeholder.jpg';
String _longBox3 = 'assets/images/placeholder.jpg';
String _smBox5 = 'assets/images/placeholder.jpg';
String _smBox6 = 'assets/images/placeholder.jpg';

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
        .doc('lifestyle1')
        .get()
        .then((value) async {
      _longBox3 = value.data()['image'];
    });
    FirebaseFirestore.instance
        .collection("lifestyle")
        .doc('lifestyle1')
        .get()
        .then((value) async {
      _smBox5 = value.data()['image'];
    });
    FirebaseFirestore.instance
        .collection("lifestyle")
        .doc('lifestyle1')
        .get()
        .then((value) async {
      _smBox6 = value.data()['image'];
    });
  }

  @override
  Widget build(BuildContext context) {
    print('_topBox');
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.network(
              _topBox1,
              fit: BoxFit.fill,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(bottom: 10),
            width: 326,
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(),
                child: Image.network(
                  _longBox1,
                  fit: BoxFit.fill,
                ),
                width: 157,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.network(
                        _smBox1,
                        fit: BoxFit.fill,
                      ),
                      width: 153,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Image.network(
                        _smBox2,
                        fit: BoxFit.fill,
                      ),
                      width: 153,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white),
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
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: NetworkImage(_topBox2), fit: BoxFit.fill)),
            margin: EdgeInsets.only(bottom: 10),
            width: 326,
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(),
                width: 157,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        image: NetworkImage(_longBox2), fit: BoxFit.fill)),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: NetworkImage(_smBox3), fit: BoxFit.fill)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 153,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                          image: DecorationImage(
                              image: NetworkImage(_smBox4), fit: BoxFit.fill)),
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
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: NetworkImage(_topBox3), fit: BoxFit.fill)),
            margin: EdgeInsets.only(bottom: 10),
            width: 326,
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(),
                width: 157,
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        image: NetworkImage(_longBox3), fit: BoxFit.fill)),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: NetworkImage(_smBox5), fit: BoxFit.fill)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 153,
                      height: 115,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: NetworkImage(_smBox6), fit: BoxFit.fill)),
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

// class PatternBox1 extends StatefulWidget {
//   @override
//   _DashState createState() => _DashState();
// }
//
//
// // class _DashState extends State<PatternBox1> {
// //   @override
// //   void initState() {
// //     super.initState();
// //
// //     FirebaseFirestore.instance.collection("crol").doc('crol1').get().then((
// //         value) {
// //       _topBox1 = value.data()['image'];
// //     });
// //     FirebaseFirestore.instance.collection("crol").doc('crol2').get().then((
// //         value) async {
// //       _longBox1 = await value.data()['image'];
// //     });
// //     FirebaseFirestore.instance.collection("crol").doc('crol3').get().then((
// //         value) async {
// //       _smBox1 = await value.data()['image'];
// //     });
// //     FirebaseFirestore.instance.collection("crol").doc('crol4').get().then((
// //         value) async {
// //       _smBox2 = await value.data()['image'];
// //     });
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     return Container (
// //       margin: EdgeInsets.all(20),
// //       child: Column(
// //         children: <Widget>[
// //           Container(
// //             child: Image.network(_topBox1,fit: BoxFit.cover,),
// //             decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(6),
// //                 ),
// //             margin: EdgeInsets.only(bottom: 10),
// //             width: 326,
// //             height: 150,
// //           ),
// //           Row(
// //             children: [
// //               Container(
// //                 child: Image.network(_longBox1 ,fit: BoxFit.cover,),
// //                 margin: EdgeInsets.only(),
// //                 width: 157,
// //                 height: 240,
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(6),
// //                     ),
// //               ),
// //               Container(
// //                 margin: EdgeInsets.only(left: 10),
// //                 child: Column(
// //                   children: [
// //                     Container(
// //                       child: Image.network(_smBox1 ,fit: BoxFit.cover,),
// //                       margin: EdgeInsets.only(bottom: 5),
// //                       width: 153,
// //                       height: 115,
// //                       decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(6),
// //                           ),
// //                     ),
// //                     Container(
// //                       child: Image.network(_smBox2 ,fit: BoxFit.cover,),
// //                       margin: EdgeInsets.only(bottom: 5),
// //                       width: 153,
// //                       height: 115,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(6),
// //                       ),
// //                     )
// //                   ],
// //                 ),
// //               )
// //             ],
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
