import 'package:flutter/material.dart';

import 'package:yt_tutorial_app/pages/landing_page_widgets/bottom_navBar.dart';
import 'package:yt_tutorial_app/pages/landing_page_widgets/offers_c.dart';

class OfferList extends StatefulWidget {
  @override
  _OfferListState createState() => _OfferListState();
}

final String heading =
    'C-NAME'; // Change heading based on the selected category

int _currentIndex = 0;

void onClick(int index) {}

class _OfferListState extends State<OfferList>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            toolbarHeight: 100,
            backgroundColor: Colors.black,
            elevation: 0,
            title: Text(
              heading,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: "Montserrat Bold",
              ),
            ),
            bottom: PreferredSize(
                child: TabBar(
                    controller: controller,
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    tabs: [
                      Tab(
                        child: Text('Fashion'),
                      ),
                      Tab(
                        child: Text('Beauty'),
                      ),
                      Tab(
                        child: Text('Lifestyle'),
                      ),
                      Tab(
                        child: Text('More'),
                      ),
                    ]),
                preferredSize: Size.fromHeight(30.0)),
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .25,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Gift Cards',
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        // color: Colors.blue,
                        width: MediaQuery.of(context).size.width,
                        child: OfferC(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .25,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Vouchers',
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        // color: Colors.blue,
                        width: MediaQuery.of(context).size.width,
                        child: OfferC(),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .25,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Deals',
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        // color: Colors.blue,
                        width: MediaQuery.of(context).size.width,
                        child: OfferC(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(),
        ));
  }
}
