import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg',
  'assets/images/placeholder.jpg'
];

class CatBanner extends StatefulWidget {
  @override
  _CatBannerState createState() => _CatBannerState();
}

class _CatBannerState extends State<CatBanner> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/offer');
                  },
                  child: Container(
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
