import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/80x80_1.jpg',
  'assets/images/80x80_2.jpg',
  'assets/images/80x80_3.jpg',
  'assets/images/80x80_4.jpg'
];

class CatBanner extends StatelessWidget {
  final List<Widget> imageSliders = imgList
      .map((item) => Row(
            children: [
              Container(
                width: 80,
                height: 80,
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
