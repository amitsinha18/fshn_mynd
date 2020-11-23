import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yt_tutorial_app/services/auth.dart';
import 'package:flushbar/flushbar.dart';
import 'package:yt_tutorial_app/pages/landing_page_widgets/bottom_navBar.dart';
import 'package:firebase_storage/firebase_storage.dart';

// String proPic = 'assets/images/pro_pic_1.jpg';
// String proName = ('Harry R').toUpperCase();
// String email = 'email@address.com';
String number = '';
String dob = '';

class ProfilePage extends StatefulWidget {
  // final String _proCover = 'assets/images/pro_cover_2.jpg';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _email1 = new TextEditingController();
  final TextEditingController _name1 = new TextEditingController();
  final TextEditingController _dob1 = new TextEditingController();
  final TextEditingController _number1 = new TextEditingController();
  final Auth _auth1 = Auth();
  String proName = '';
  String email = '';
  String proPic = '';
  String _uid = "";
  final picker = ImagePicker();
  File _image;
  void initState() {
    _auth1.getCurrentUID().then((val) {
      _uid = val.uid;

      FirebaseFirestore.instance
          .collection("clients")
          .doc(_uid)
          .get()
          .then((value) async {
        setState(() {
          proName = value.data()['name'];
          email = value.data()['email'];
          number = value.data()['number'];
          dob = value.data()['dob'];
          proPic = value.data()['photo'];
          _email1.text = email;
          _name1.text = proName;
          _number1.text = number;
          _dob1.text = dob;
        });
      });
    }).catchError((e) {
      print(e);
    });
    super.initState();
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1960, 1),
        lastDate: selectedDate);
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        proPic = _image.toString();
        uploadimage();
      } else {
        print('No image selected.');
      }
    });
  }

  Future uploadimage() async {
    String filename = basename(_image.path);
    Reference reference =
        FirebaseStorage.instance.ref().child('user').child(filename);
    String fileUrl =
        await (await reference.putFile(_image).whenComplete(() => null))
            .ref
            .getDownloadURL();
    print(fileUrl);
    if (fileUrl != null) {
      proPic = fileUrl;
      FirebaseFirestore.instance.collection("clients").doc(_uid).update({
        "photo": proPic,
      });
    }
    setState(() {});
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(15, 16, 17, 1),
      body: Center(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: size.height * .3,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     image: AssetImage(_proCover), fit: BoxFit.cover),
                  color: Colors.white,
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    getImage();
                  },
                  child: Container(
                    child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.red,
                        child: ClipOval(
                          child: SizedBox(
                              width: 180,
                              height: 180,
                              child: (_image != null)
                                  ? Image.file(
                                      _image,
                                      fit: BoxFit.fill,
                                    )
                                  : Image.network(
                                      proPic,
                                      fit: BoxFit.fill,
                                    )),
                        )),
                    margin: EdgeInsets.only(top: 160),
                    // decoration: BoxDecoration(
                    //   color: Colors.green,
                    //   shape: BoxShape.circle,
                    // ),
                  ),
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              child: Text(
                proName,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Montserrat Regular',
                    fontWeight: FontWeight.w600),
              )),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: _email1,
                    onChanged: (value) {
                      email = value;
                    },
                    style: TextStyle(
                        color: Color.fromRGBO(252, 252, 252, 1),
                        fontFamily: 'Montserrat Bold'),
                    decoration: _buildInputDecoration('', ''),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 300,
                  child: TextFormField(
                    controller: _number1,
                    onChanged: (value) {
                      number = value;
                    },
                    style: TextStyle(
                        color: Color.fromRGBO(252, 252, 252, 1),
                        fontFamily: 'Montserrat Bold'),
                    decoration: _buildInputDecoration('', ''),
                  ),
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    readOnly: true,
                    onTap: () {
                      _selectDate(context);
                    },
                    controller: _dob1,
                    onChanged: (value) {
                      dob = value;
                    },
                    style: TextStyle(
                        color: Color.fromRGBO(252, 252, 252, 1),
                        fontFamily: 'Montserrat Bold'),
                    decoration: _buildInputDecoration('', ''),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: InkWell(
              onTap: () {
                FirebaseFirestore.instance
                    .collection("clients")
                    .doc(_uid)
                    .update({
                  "name": proName,
                  "email": email,
                  "dob": ("${selectedDate.toLocal()}".split(' ')[0]),
                  "number": number,
                }).then((_) {
                  print("success!");
                  Navigator.of(context).pushReplacementNamed('/user');
                  Flushbar(
                    message: "Profile Updated!",
                    duration: Duration(seconds: 3),
                  )..show(context);
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 5.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Done',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat Bold',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
                width: 100,
                height: 40,
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

InputDecoration _buildInputDecoration(String hint, String iconPath) {
  return InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(252, 252, 252, 1))),
      hintText: hint,
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(151, 151, 151, 1))),
      hintStyle: TextStyle(color: Color.fromRGBO(252, 252, 252, 1)),
      icon: iconPath != '' ? Image.asset(iconPath) : null,
      errorStyle: TextStyle(color: Color.fromRGBO(248, 218, 87, 1)),
      errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(248, 218, 87, 1))),
      focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(248, 218, 87, 1))));
}
