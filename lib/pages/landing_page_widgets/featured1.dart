import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imgList = [
  'assets/images/174x93_1.png',
  'assets/images/174x93_2.png',
  'assets/images/174x93_3.png',
  'assets/images/174x93_4.png',
  'assets/images/174x93_5.png',
  'assets/images/174x93_6.png'
];

class FeatBanner extends StatefulWidget {
  FeatBanner() : super();

  @override
  _FeatBannerState createState() => _FeatBannerState();
}

class _FeatBannerState extends State<FeatBanner> {
  int _current = 0;
  List<Widget> imageSlider = imgList.map((imgUrl) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: 264,
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgUrl),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12),
            color: Colors.green,
          ),
        );
      },
    );
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 143,
              initialPage: 0,
              autoPlay: true,
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
