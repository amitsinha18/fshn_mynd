import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<String> giftList = [];

List<String> voucherList = [];

List<String> dealList = [];

class GiftCard extends StatefulWidget {
  GiftCard() : super();

  @override
  _GiftCardState createState() => _GiftCardState();
}

class _GiftCardState extends State<GiftCard> {
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
        .doc('EVbGE8rrbZdrGVgqcKzb')
        .collection("gift")
        .get()
        .then((QuerySnapshot querySnapshot) => {
              setState(() {
                querySnapshot.docs.forEach((doc) async {
                  giftList.addAll([doc["image"]]);
                });
              }),
            });
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
                // FadeTransition(opacity: , child: ());
                Navigator.of(context).pushNamed('/offerpage');
              },
              child: Container(
                width: 264,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imgUrl),
                    fit: BoxFit.fill,
                  ),
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

class Vouchers extends StatefulWidget {
  Vouchers() : super();

  @override
  _VouchersState createState() => _VouchersState();
}

class _VouchersState extends State<Vouchers> {
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
        .doc('EVbGE8rrbZdrGVgqcKzb')
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
                    image: NetworkImage(imgUrl),
                    fit: BoxFit.fill,
                  ),
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

class Deals extends StatefulWidget {
  Deals() : super();

  @override
  _DealsState createState() => _DealsState();
}

class _DealsState extends State<Deals> {
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
        .doc('EVbGE8rrbZdrGVgqcKzb')
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
                    fit: BoxFit.fill,
                  ),
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
