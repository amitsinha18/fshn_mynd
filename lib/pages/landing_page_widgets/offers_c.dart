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

class OfferC extends StatefulWidget {
  OfferC() : super();

  @override
  _OfferCState createState() => _OfferCState();
}

class _OfferCState extends State<OfferC> {
  int _current = 0;
  List<Widget> imageSlider = imgList.map((imgUrl) {
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
