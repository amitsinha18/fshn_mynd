import 'package:flutter/material.dart';
import 'package:yt_tutorial_app/pages/landing_page_widgets/Beauty.dart';
import 'package:yt_tutorial_app/pages/landing_page_widgets/Fashion.dart';
import 'package:yt_tutorial_app/pages/landing_page_widgets/Lifestlye.dart';

class FashionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //GiftCards
          Container(
            margin: EdgeInsets.only(bottom: 15, left: 35),
            alignment: Alignment.topLeft,
            child: Text(
              'Gift Cards',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat Bold',
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          GiftCardF(),
          SizedBox(height: 18),
          //Vouchers
          Container(
            margin: EdgeInsets.only(bottom: 15, left: 35),
            alignment: Alignment.topLeft,
            child: Text(
              'Vouchers',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat Bold',
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          VouchersF(),
          SizedBox(height: 18),
          //Deals
          Container(
            margin: EdgeInsets.only(bottom: 15, left: 35),
            alignment: Alignment.topLeft,
            child: Text(
              'Deals',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat Bold',
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          DealsF()
        ],
      ),
    );
  }
}

class BeautyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //GiftCards
          Container(
            margin: EdgeInsets.only(bottom: 15, left: 35),
            alignment: Alignment.topLeft,
            child: Text(
              'Gift Cards',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat Bold',
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          GiftCard(),
          SizedBox(height: 18),
          //Vouchers
          Container(
            margin: EdgeInsets.only(bottom: 15, left: 35),
            alignment: Alignment.topLeft,
            child: Text(
              'Vouchers',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat Bold',
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          Vouchers(),
          SizedBox(height: 18),
          //Deals
          Container(
            margin: EdgeInsets.only(bottom: 15, left: 35),
            alignment: Alignment.topLeft,
            child: Text(
              'Deals',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat Bold',
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          Deals()
        ],
      ),
    );
  }
}

class LifestlyeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //GiftCards
          Container(
            margin: EdgeInsets.only(bottom: 15, left: 35),
            alignment: Alignment.topLeft,
            child: Text(
              'Gift Cards',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat Bold',
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          GiftCardL(),
          SizedBox(height: 18),
          //Vouchers
          Container(
            margin: EdgeInsets.only(bottom: 15, left: 35),
            alignment: Alignment.topLeft,
            child: Text(
              'Vouchers',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat Bold',
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          VouchersL(),
          SizedBox(height: 18),
          //Deals
          Container(
            margin: EdgeInsets.only(bottom: 15, left: 35),
            alignment: Alignment.topLeft,
            child: Text(
              'Deals',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat Bold',
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          DealsL()
        ],
      ),
    );
  }
}

class MoreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('More Tab', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
