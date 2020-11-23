import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<String> imgList = [
  // 'assets/images/slider1.png',
  // 'assets/images/slider2.png',
  // 'assets/images/slider5.png',
  // 'assets/images/slider4.png'
];

class FeatBanner extends StatefulWidget {
  @override
  _FeatBannerState createState() => _FeatBannerState();
}

class _FeatBannerState extends State<FeatBanner> {
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection('slider')
        .get()
        .then((QuerySnapshot querySnapshot) => {
              setState(() {
                querySnapshot.docs.forEach((doc) {
                  imgList.addAll([doc["image"]]);
                });
              }),
            });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> imageSlider = imgList.map((imgUrl) {
      return Builder(
        builder: (BuildContext context) {
          var size = MediaQuery.of(context).size;
          return InkWell(
              onTap: () {},
              child: Container(
                width: size.width * .9,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green,
                ),
              ));
        },
      );
    }).toList();
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: size.height * .2,
              initialPage: 0,
              autoPlay: true,
              enlargeCenterPage: true,
              // onPageChanged: (index, current) {
              //   setState(() {
              //     _current = index;
              //   });
              // },
            ),
            items: imageSlider,
          )
        ],
      ),
    );
  }
}

//Testing
// void initState() {
//     super.initState();
//     FirebaseFirestore.instance
//         .collection("slider")
//         .doc('Crvukm7DTW9Fakt8Pu8Q')
//         .get()
//         .then((value) async {
//       setState(() {
//         imgList.addAll([value.data()['image']]);
//       });
//     });
//     FirebaseFirestore.instance
//         .collection("slider")
//         .doc('DvgCTw4XLhz8FFWDlSVx')
//         .get()
//         .then((value) async {
//       setState(() {
//         imgList.addAll([value.data()['image']]);
//       });
//     });

//     FirebaseFirestore.instance
//         .collection("slider")
//         .doc('w7NlcK6sCzzlCd3FFEcl')
//         .get()
//         .then((value) async {
//       setState(() {
//         imgList.addAll([value.data()['image']]);
//       });
//     });
//     FirebaseFirestore.instance
//         .collection("slider")
//         .doc('L6DTxdqQpkcqILqOMQRv')
//         .get()
//         .then((value) async {
//       setState(() {
//         imgList.addAll([value.data()['image']]);
//       });
//     });
//   }
