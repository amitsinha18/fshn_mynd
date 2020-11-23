import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'landing_page_widgets/bottom_navBar.dart';

class WallPage extends StatefulWidget {
  @override
  _SwipeCardState createState() => _SwipeCardState();
}

class _SwipeCardState extends State<WallPage> {
  List<String> wallImg = [
    "assets/images/wall1.jpg",
    "assets/images/wall2.jpg",
    "assets/images/wall3.jpg",
    "assets/images/wall1.jpg",
    "assets/images/wall2.jpg",
    "assets/images/wall4.jpg",
  ];

  Color _color = Colors.grey;

  CardController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Color.fromRGBO(15, 16, 17, 1),
        elevation: 0,
        title: Text(
          'WALL',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: "Montserrat Bold",
          ),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(15, 16, 17, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: new TinderSwapCard(
                    orientation: AmassOrientation.TOP,
                    totalNum: wallImg.length,
                    stackNum: 3,
                    swipeEdge: 4.0,
                    maxWidth: MediaQuery.of(context).size.width * 0.9,
                    maxHeight: MediaQuery.of(context).size.width * 0.9,
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    minHeight: MediaQuery.of(context).size.width * 0.8,
                    cardBuilder: (context, index) => Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  width: 300,
                                  height: 230,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('${wallImg[index]}'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                  ),
                                ),
                                //Bottom_white Box
                                Container(
                                  height: 60,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.only(right: 40),
                                          child: IconButton(
                                            icon: Icon(Icons.star),
                                            color: _color,
                                            iconSize: 35,
                                            tooltip: 'Like Post',
                                            onPressed: () {
                                              setState(() {
                                                _color = Colors.pinkAccent;
                                                print('Like Pressed On $index');
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(),
                                        child: Text(
                                          "_postCaption",
                                          style: TextStyle(
                                              fontFamily: 'Montserrat Regular',
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 40),
                                        alignment: Alignment.centerRight,
                                        child: IconButton(
                                          icon: Icon(Icons.share),
                                          color: Colors.blueGrey,
                                          iconSize: 35,
                                          tooltip: 'Share Post',
                                          onPressed: () {
                                            print('Share Pressed $index');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                    cardController: controller = CardController(),
                    swipeUpdateCallback:
                        (DragUpdateDetails details, Alignment align) {
                      /// Get swiping card's alignment
                      if (align.x < 0) {
                      } else if (align.x > 0) {
                        //Card is RIGHT swiping
                      }
                    },
                    swipeCompleteCallback:
                        (CardSwipeOrientation orientation, int index) {
                      /// Get orientation & index of swiped card!
                    })),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
