import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yt_tutorial_app/pages/offer_list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final List<String> imgList = [
  // 'assets/images/cat1.png',
  // 'assets/images/cat2.png',
  // 'assets/images/wall2.jpg',
  // 'assets/images/wall3.jpg'
];

class CatBanner extends StatefulWidget {
  @override
  _CatBannerState createState() => _CatBannerState();
}

class _CatBannerState extends State<CatBanner> {
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("category")
        .doc('EVbGE8rrbZdrGVgqcKzb')
        .get()
        .then((value) async {
      setState(() {
        imgList.addAll([value.data()['image']]);
      });
    });
    FirebaseFirestore.instance
        .collection("category")
        .doc('NUUz2W5Rghw7Ec0mbYeC')
        .get()
        .then((value) async {
      setState(() {
        imgList.addAll([value.data()['image']]);
      });
    });

    FirebaseFirestore.instance
        .collection("category")
        .doc('y3iOVqIWdZFrcPnF78sw')
        .get()
        .then((value) async {
      setState(() {
        imgList.addAll([value.data()['image']]);
      });
    });
    FirebaseFirestore.instance
        .collection("category")
        .doc('ej6WsRIfBxrGrkHSU6HN')
        .get()
        .then((value) async {
      setState(() {
        imgList.addAll([value.data()['image']]);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Row(
              children: [
                InkWell(
                  onTap: () {
                    final data = imgList.indexOf(item);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OfferList(
                            data: data,
                          ),
                        ));
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(item),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ],
            ))
        .toList();
    return Container(
        child: Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            disableCenter: true,
            viewportFraction: .3,
            height: 80,
          ),
          items: imageSliders,
        ),
      ],
    ));
  }
}
