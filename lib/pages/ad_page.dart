import 'dart:typed_data';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

import 'package:esys_flutter_share/esys_flutter_share.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String adImg = 'assets/images/placeholder.jpg';
String adTitle = 'ad title'.toUpperCase();
String adDesc =
    'This is because the app tries to get renderUrl asynchronously. Before the render Url is fetched back, it is null.NetworkImage(renderUrl ?? '
    ') then tries to use empty string as the url and result in the exception.I am not sure if this is the best solution, but this seems to work';

class AdPage extends StatelessWidget {
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
                        image: AssetImage(adImg), fit: BoxFit.fill),
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
                          adTitle,
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
                        adDesc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat Regular', fontSize: 18),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        // var request = await HttpClient().getUrl(Uri.parse('https://shop.esys.eu/media/image/6f/8f/af/amlog_transport-berwachung.jpg'));
                        // var response = await request.close();
                        // Uint8List bytes = await consolidateHttpClientResponseBytes(response);
                        // await Share.file('ESYS AMLOG', 'amlog.jpg', bytes, 'image/jpg',text: offerDesc);
                        final ByteData bytes1 = await rootBundle.load(adImg);
                        await Share.files(
                            'esys images',
                            {
                              'esys.png': bytes1.buffer.asUint8List(),
                            },
                            '*/*',
                            text: "*" + adTitle + "* \n\n" + adDesc);
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                              )
                            ],
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Share')
                          ],
                        ),
                      ),
                    ),
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
