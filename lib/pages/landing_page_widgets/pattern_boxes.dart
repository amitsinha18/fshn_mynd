import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String _topBox1 = '';
String _smBox1 = '';
Uri _topBox;

String _smBox2 = '';
String _longBox1 = '';
String _topBox2 = 'assets/images/153x115_2.png';
String _topBox3 = 'assets/images/153x115_1.png';

String _longBox2 = 'assets/images/157x240_2.png';
String _longBox3 = 'assets/images/157x240_3.png';

String _smBox3 = 'assets/images/153x115_3.png';
String _smBox4 = 'assets/images/153x115_4.png';
String _smBox5 = 'assets/images/153x115_5.png';
String _smBox6 = 'assets/images/153x115_6.png';

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
        .then((value) {
      _topBox1 = value.data()['image'];
    });
    FirebaseFirestore.instance
        .collection("crol")
        .doc('crol1')
        .get()
        .then((value) {
      _topBox = value.data()['image'];
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
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(_topBox2), fit: BoxFit.fill)),
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
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
