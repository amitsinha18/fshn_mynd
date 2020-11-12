import 'package:flutter/material.dart';

String offerImg = 'assets/images/placeholder.jpg';
String offerTitle = 'offer title'.toUpperCase();
String offerDesc =
    'This is because the app tries to get renderUrl asynchronously. Before the render Url is fetched back, it is null.NetworkImage(renderUrl ?? '
    ') then tries to use empty string as the url and result in the exception.I am not sure if this is the best solution, but this seems to work';

class OfferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.close,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    image: DecorationImage(
                        image: AssetImage(offerImg), fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
                width: 320,
                height: 200,
              ),
              Container(
                width: 320,
                height: size.height * .6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                child: Column(
                  children: [
                    Container(
                        width: size.width,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          offerTitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Montserrat Regular',
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        )),
                    Container(
                      padding: EdgeInsets.all(20),
                      // color: Colors.blue,
                      child: Text(
                        offerDesc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat Regular', fontSize: 18),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Container(
                                child: Icon(Icons.book_online),
                                color: Colors.black,
                              )),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                  child: Icon(Icons.share),
                                  color: Colors.black))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
