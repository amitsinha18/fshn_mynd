import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/login.dart';
import 'pages/home_screen.dart';
import 'pages/offer_list.dart';
import 'pages/wall.dart';
import 'pages/profile.dart';


void main() async {
  SystemChrome.setEnabledSystemUIOverlays([]);
  // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if (await FirebaseAuth.instance.currentUser != null) {
    runApp(home());
  } else {
    runApp(MyApp());
  }

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/offer': (BuildContext context) => new OfferList(),
        '/login': (BuildContext context) => new LoginPage(),
        '/wall': (BuildContext context) => new WallPage(),
        '/profile': (BuildContext context) => new ProfilePage(),
        '/home': (BuildContext context) => new HomeScreen(),
      },
      home: LoginPage(),
    );
  }
}
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/offer': (BuildContext context) => new OfferList(),
        '/login': (BuildContext context) => new LoginPage(),
        '/wall': (BuildContext context) => new WallPage(),
        '/profile': (BuildContext context) => new ProfilePage(),
        '/home': (BuildContext context) => new HomeScreen(),
      },
      home: HomeScreen(),
    );
  }
}


