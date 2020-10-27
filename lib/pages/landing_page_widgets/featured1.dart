import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/174x93_1.png',
  'assets/images/174x93_2.png',
  'assets/images/174x93_3.png',
  'assets/images/174x93_4.png',
  'assets/images/174x93_5.png',
  'assets/images/174x93_6.png'
];

class FeatBanner extends StatelessWidget {
  final List<Widget> imageSliders = imgList
      .map((item) => Row(
            children: [
              Container(
                width: 264,
                height: 143,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ]),
              ),
            ],
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: .8,
            height: 120,
          ),
          items: imageSliders,
        ),
      ],
    ));
  }
}
