import 'package:flutter/material.dart';

import 'landing_page_widgets/offerTabs.dart';
import 'package:yt_tutorial_app/pages/landing_page_widgets/bottom_navBar.dart';

// import 'package:yt_tutorial_app/pages/landing_page_widgets/offers_c.dart';

class OfferList extends StatefulWidget {
  final int data;
  OfferList({this.data});

  @override
  _OfferListState createState() => _OfferListState();
}

final String heading =
    'Category'; // Change heading based on the selected category

void onClick(int index) {}

class _OfferListState extends State<OfferList>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller =
        TabController(length: 4, vsync: this, initialIndex: widget.data);
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
          backgroundColor: Color.fromRGBO(15, 16, 17, 1),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            toolbarHeight: 100,
            backgroundColor: Color.fromRGBO(15, 16, 17, 1),
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
          body: TabBarView(
            controller: controller,
            children: [FashionTab(), BeautyTab(), LifestlyeTab(), MoreTab()],
          ),
          bottomNavigationBar: BottomNavBar(),
        ));
  }
}
