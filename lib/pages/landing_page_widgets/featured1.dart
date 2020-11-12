import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imgList = [
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg'
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
        var size = MediaQuery.of(context).size;
        return InkWell(
            onTap: () {
              // FadeTransition(opacity: , child: ());
              Navigator.of(context).pushNamed('/offerpage');
            },
            child: Container(
              width: size.width * .9,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgUrl),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.green,
              ),
            ));
      },
    );
  }).toList();

  @override
  Widget build(BuildContext context) {
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
