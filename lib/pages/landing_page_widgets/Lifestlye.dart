import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<String> giftList = [];

List<String> voucherList = [];

List<String> dealList = [];

class GiftCardL extends StatefulWidget {
  GiftCardL() : super();

  @override
  _GiftCardLState createState() => _GiftCardLState();
}

class _GiftCardLState extends State<GiftCardL> {
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
        .doc('NUUz2W5Rghw7Ec0mbYeC')
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

class VouchersL extends StatefulWidget {
  VouchersL() : super();

  @override
  _VouchersLState createState() => _VouchersLState();
}

class _VouchersLState extends State<VouchersL> {
  // ignore: unused_field
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
        .doc('NUUz2W5Rghw7Ec0mbYeC')
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

class DealsL extends StatefulWidget {
  DealsL() : super();

  @override
  _DealsLState createState() => _DealsLState();
}

class _DealsLState extends State<DealsL> {
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
        .doc('NUUz2W5Rghw7Ec0mbYeC')
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
