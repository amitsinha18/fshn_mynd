import 'package:flutter/material.dart';

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
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 70),
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/home');
                        },
                        child: Container(
                          child: Icon(
                            Icons.home,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        'Home',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/wall');
                        },
                        child: Container(
                          child: Icon(
                            Icons.wallpaper,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        'Wall',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 70),
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.face,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
