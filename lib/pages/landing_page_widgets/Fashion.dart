import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yt_tutorial_app/pages/offer_page.dart';

List<String> giftList = [];

List<String> voucherList = [];

List<String> dealList = [];

String offerimage = '';
String offerName = '';
String vendorName = '';
DateTime expD = DateTime.now();
String location = '';
String mob = '';
String offerDesc = '';
String vendorid = '';

class GiftCardF extends StatefulWidget {
  GiftCardF() : super();

  @override
  _GiftCardFState createState() => _GiftCardFState();
}

class _GiftCardFState extends State<GiftCardF> {
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection('category')
        .doc('y3iOVqIWdZFrcPnF78sw')
        .collection("gift")
        .get()
        .then((QuerySnapshot querySnapshot) => {
              setState(() {
                querySnapshot.docs.forEach((doc) async {
                  giftList.addAll([doc["image"]]);
                  offerimage = doc["image"];
                  offerName = doc["name"];
                  expD = doc["exp_date"];
                  offerDesc = doc["desc"];
                  vendorid = doc["category"];
                });
              }),
            });
    // FirebaseFirestore.instance
    //     .collection('service')
    //     .doc(vendorid)
    //     .get()
    //     .then((value) async {
    //   setState(() {
    //     vendorName = value.data()['name'];
    //     mob = value.data()['mob'];
    //     location = value.data()['location'];
    //   });
    // });
  }

  // ignore: unused_field
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> imageSlider = giftList.map((imgUrl) {
      return Builder(
        builder: (BuildContext context) {
          return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OfferPage(
                        img: offerimage,
                        offerName: offerName,
                        number: mob,
                        location: location,
                        // expD: expD,
                        vendorName: vendorName,
                        offerDesc: offerDesc,
                      ),
                    ));
              },
              child: Container(
                width: 264,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imgUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(6),
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
              height: size.height * .18,
              initialPage: 0,
              enlargeCenterPage: true,
              onPageChanged: (index, current) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imageSlider,
          )
        ],
      ),
    );
  }
}

class VouchersF extends StatefulWidget {
  VouchersF() : super();

  @override
  _VouchersFState createState() => _VouchersFState();
}

class _VouchersFState extends State<VouchersF> {
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("category")
        .doc('y3iOVqIWdZFrcPnF78sw')
        .get()
        .then((value) async {
      setState(() {});
    });
    FirebaseFirestore.instance
        .collection('category')
        .doc('y3iOVqIWdZFrcPnF78sw')
        .collection("voucher")
        .get()
        .then((QuerySnapshot querySnapshot) => {
              setState(() {
                querySnapshot.docs.forEach((doc) async {
                  voucherList.addAll([doc["image"]]);
                });
              }),
            });
  }

  // ignore: unused_field
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> imageSlider = voucherList.map((imgUrl) {
      return Builder(
        builder: (BuildContext context) {
          return InkWell(
              onTap: () {
                // FadeTransition(opacity: , child: ());
                Navigator.of(context).pushNamed('/offerpage');
              },
              child: Container(
                width: 264,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(6),
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
              height: size.height * .18,
              initialPage: 0,
              enlargeCenterPage: true,
              onPageChanged: (index, current) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imageSlider,
          )
        ],
      ),
    );
  }
}

class DealsF extends StatefulWidget {
  DealsF() : super();

  @override
  _DealsFState createState() => _DealsFState();
}

class _DealsFState extends State<DealsF> {
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("category")
        .doc('y3iOVqIWdZFrcPnF78sw')
        .get()
        .then((value) async {
      setState(() {});
    });
    FirebaseFirestore.instance
        .collection('category')
        .doc('y3iOVqIWdZFrcPnF78sw')
        .collection("deal")
        .get()
        .then((QuerySnapshot querySnapshot) => {
              setState(() {
                querySnapshot.docs.forEach((doc) async {
                  dealList.addAll([doc["image"]]);
                });
              }),
            });
  }

  // ignore: unused_field
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> imageSlider = dealList.map((imgUrl) {
      return Builder(
        builder: (BuildContext context) {
          return InkWell(
              onTap: () {
                // FadeTransition(opacity: , child: ());
                Navigator.of(context).pushNamed('/offerpage');
              },
              child: Container(
                width: 264,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imgUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(6),
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
              height: size.height * .18,
              initialPage: 0,
              enlargeCenterPage: true,
              onPageChanged: (index, current) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imageSlider,
          )
        ],
      ),
    );
  }
}
