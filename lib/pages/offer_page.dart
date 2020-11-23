import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

import 'package:esys_flutter_share/esys_flutter_share.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

String offerImg = 'assets/images/placeholder.jpg';
String offerTitle = 'offer title'.toUpperCase();

var nDate = DateTime.now();

class OfferPage extends StatelessWidget {
  final String img, offerName, offerDesc, number, location, vendorName, expD;

  OfferPage(
      {this.img,
      this.offerName,
      this.number,
      this.location,
      this.expD,
      this.vendorName,
      this.offerDesc});

  var expDay = nDate.day;
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
                        image: NetworkImage(img), fit: BoxFit.fill),
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
                          offerName,
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () async {
                                FlutterOpenWhatsapp.sendSingleMessage(
                                    "091$number", "Hello");
                              },
                              child: Container(
                                width: 80,
                                height: 40,
                                child: Icon(
                                  Icons.book_online,
                                  color: Colors.white,
                                ),
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                              onTap: () async {
                                var request =
                                    await HttpClient().getUrl(Uri.parse(img));
                                var response = await request.close();
                                Uint8List bytes =
                                    await consolidateHttpClientResponseBytes(
                                        response);
                                await Share.file(
                                    offerName, 'amlog.jpg', bytes, 'image/jpg',
                                    text: "*" +
                                        offerName +
                                        "* \n\n" +
                                        offerDesc +
                                        "\n" +
                                        vendorName +
                                        "\n" +
                                        location);
                              },
                              child: Container(
                                  width: 80,
                                  height: 40,
                                  child: Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  ),
                                  color: Colors.black))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                        onTap: () async {
                          if (await canLaunch(location) != null) {
                            await launch(location);
                          } else {
                            throw 'Could not launch $location';
                          }
                        },
                        child: Container(
                          width: 80,
                          height: 40,
                          color: Colors.black,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        expDay.toString(),
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
