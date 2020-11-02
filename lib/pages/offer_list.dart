import 'package:flutter/material.dart';

import 'package:yt_tutorial_app/pages/landing_page_widgets/bottom_navBar.dart';

class OfferList extends StatefulWidget {
  @override
  _OfferListState createState() => _OfferListState();
}

final String heading =
    'C-NAME'; // Change heading based on the selected category

int _currentIndex = 0;

void onClick(int index) {}

class _OfferListState extends State<OfferList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'MYND',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: "Montserrat Bold",
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            //Category Box Design Start!!!
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      //Image Container
                      Container(
                        width: 270,
                        height: 214,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/cimg.jpg'),
                                fit: BoxFit.fill)),
                      ),
                      //Bottom_white Box
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: IconButton(
                                icon: Icon(Icons.add_box),
                                color: Colors.black,
                                iconSize: 35,
                                tooltip: 'Book Offer',
                                onPressed: () {
                                  print('Book Pressed');
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 57, top: 15),
                              child: Column(
                                children: [Text('data'), Text('data')],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 55),
                              child: IconButton(
                                icon: Icon(Icons.share),
                                color: Colors.black,
                                iconSize: 35,
                                tooltip: 'Book Offer',
                                onPressed: () {
                                  print('Share Pressed');
                                },
                              ),
                            ),
                          ],
                        ),
                        height: 62,
                        width: 270,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              ),
                            ]),
                      )
                    ],
                  ),
                )
              ],
            ) //Category Box Design End
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
