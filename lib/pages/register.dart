import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yt_tutorial_app/services/auth.dart';

final _formKey = new GlobalKey<FormState>();
class RegisterPage extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<RegisterPage> {
  final Auth _auth1 = Auth();
  TextEditingController uName,uEmail;
  String uid='',uname1;


  String name = '';
  String email = '';
  String photoUrl ='';
  @override
  void initState(){


    _auth1.getCurrentUID().then((val){
      setState(() {
        this.uid = val.uid;
        this.name = val.displayName;
        this.email = val.email;
        this.photoUrl=val.photoURL;


      });
    }).catchError((e){
      print(e);
    });
    super.initState();
    uid.toString();

  }


  @override
  Widget build(BuildContext context) {
       uName = TextEditingController(text: '$name');

       uEmail = TextEditingController(text: '$email');




    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 43.0),
          child: Form(
            key: _formKey,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildFirstName(uName),
                  _buildEmail(uEmail),
                  _buildDOB(),
                  _buildSignUpButton(context,uid)
                ],
              ),
            ),
          ),
        ));
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
String name;
Widget _buildFirstName(controller) {

  return TextFormField(
    controller: controller,

    validator: (value) => value.isEmpty ? "First name cannot be empty" : null,
 onChanged: (value){
      name=value;
 },


    style: TextStyle(
        color: Color.fromRGBO(252, 252, 252, 1), fontFamily: 'RadikalLight'),
    decoration: _buildInputDecoration("First name", ''),
  );
}



Widget _buildEmail(controller) {
  return TextFormField(
    controller: controller,
    validator: (value) => !isEmail(value)
        ? "Sorry, we do not recognize this email address"
        : null,
    style: TextStyle(
        color: Color.fromRGBO(252, 252, 252, 1), fontFamily: 'RadikalLight'),
    decoration: _buildInputDecoration("Email", ''),
  );
}

Widget _buildDOB() {
  return TextFormField(
    style: TextStyle(
        color: Color.fromRGBO(252, 252, 252, 1), fontFamily: 'RadikalLight'),
    decoration: _buildInputDecoration("DOB", ''),

  );
}

bool isEmail(String value) {
  String regex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = new RegExp(regex);

  return value.isNotEmpty && regExp.hasMatch(value);
}

Widget _buildSignUpButton(BuildContext context,String uid) {
  return Container(
    margin: const EdgeInsets.only(top: 43.0),
    width: MediaQuery.of(context).size.width * 0.62,
    child: RaisedButton(
      child: const Text(
        "Sign Up",
        style: TextStyle(
            color: Colors.white, fontFamily: 'RadikalMedium', fontSize: 14),
      ),
      color: Colors.red,
      elevation: 4.0,
      onPressed: () {
        if(name != null) {
          FirebaseFirestore.instance.collection("clients").doc(uid).update(
              {

                "name": name,


              }).then((_) {
            print("success!");
          });
        }else{
          FirebaseFirestore.instance.collection("clients").doc(uid).update(
              {




              }).then((_) {
            print("success!");
          });
        }
      },
    ),
  );
}



