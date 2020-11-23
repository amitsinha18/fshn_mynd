import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:yt_tutorial_app/services/auth.dart';
import 'package:flushbar/flushbar.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _name1 = new TextEditingController();
  final TextEditingController _email1 = new TextEditingController();
  final TextEditingController _number1 = new TextEditingController();

  final Auth _auth1 = Auth();
  String name = '';
  String email = '';
  String number = '';
  String uid = '';
  String photo = '';
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _auth1.getCurrentUID().then((val) {
      setState(() {
        name = val.displayName;
        uid = val.uid;
        email = val.email;
        number = val.phoneNumber;
        photo = val.photoURL;
        _email1.text = email;
        _name1.text = name;
        _number1.text = number;
      });
    }).catchError((e) {
      print(e);
    });
    super.initState();
    print(name);
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

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        color: Color.fromRGBO(15, 16, 17, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Header
            Container(
              margin: EdgeInsets.only(top: 60),
              width: size.width,
              // color: Colors.blue,
              child: Text(
                'Sign-Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'Montserrat Bold'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: size.width,
              height: size.height - 200,
              // color: Colors.blue,
              child: Column(
                children: [
                  //Name
                  Container(
                    width: size.width * .9,
                    child: TextFormField(
                      controller: _name1,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                      },
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Montserrat Bold'),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(151, 151, 151, 1),
                            ),
                          ),
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  //Number
                  Container(
                    width: size.width * .9,
                    child: TextFormField(
                      controller: _number1,
                      onChanged: (value) {
                        number = value;
                      },
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Montserrat Bold'),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(151, 151, 151, 1),
                            ),
                          ),
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  //Email
                  Container(
                    width: size.width * .9,
                    child: TextFormField(
                      controller: _email1,
                      validator: (value) => !isEmail(value)
                          ? "Sorry, we do not recognize this email address"
                          : null,
                      onChanged: (value) {
                        email = value;
                      },
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Montserrat Bold'),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(151, 151, 151, 1),
                            ),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  //DOB
                  Container(
                    width: size.width * .9,
                    child: TextFormField(
                      readOnly: true,
                      onTap: () {
                        _selectDate(context);
                      },
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Montserrat Bold'),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(151, 151, 151, 1),
                            ),
                          ),
                          hintText: ("${selectedDate.toLocal()}".split(' ')[0]),
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: 80),
                  //Sign-up Button
                  GestureDetector(
                    onTap: () {
                      if (name == null || email == null || number == null) {
                        Flushbar(
                          message: "Please Complete Registeration",
                          duration: Duration(seconds: 3),
                        )..show(context);
                      } else {
                        if (photo == null) {
                          photo =
                              'https://www.xovi.com/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png';
                        }

                        FirebaseFirestore.instance
                            .collection("clients")
                            .doc(uid)
                            .set({
                          "id": uid,
                          "name": name,
                          "email": email,
                          "dob": ("${selectedDate.toLocal()}".split(' ')[0]),
                          "number": number,
                          "photo": photo,
                        }).then((_) {
                          Navigator.of(context).pushReplacementNamed('/home');
                          Flushbar(
                            message: "Profile Created!",
                            duration: Duration(seconds: 3),
                          )..show(context);
                        });
                      }
                    },
                    child: Container(
                      width: size.width * .8,
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.redAccent,
                        color: Colors.red,
                        elevation: 7.0,
                        child: Center(
                          child: Text(
                            'Sign-Up',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//         // if (name != null) {
//         //   FirebaseFirestore.instance.collection("clients").doc(uid).update({
//         //     "name": name,
//         //   }).then((_) {
//         //     print("success!");
//         //   });
//         // } else {
//         //   FirebaseFirestore.instance
//         //       .collection("clients")
//         //       .doc(uid)
//         //       .update({}).then((_) {
//         //     print("success!");
//         //   });
//         // }
//
bool isEmail(String value) {
  String regex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = new RegExp(regex);

  return value.isNotEmpty && regExp.hasMatch(value);
}
