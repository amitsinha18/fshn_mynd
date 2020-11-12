import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:yt_tutorial_app/pages/user.dart';
import 'pages/user.dart';
import 'pages/login.dart';
import 'pages/home_screen.dart';
import 'pages/offer_list.dart';
import 'pages/wall.dart';
import 'pages/profile.dart';
import 'pages/register.dart';
import 'pages/reward_page.dart';
import 'pages/offer_page.dart';

void main() async {
  // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  await Firebase.initializeApp();
  if (FirebaseAuth.instance.currentUser != null) {
    runApp(Home());
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
        '/user': (BuildContext context) => new UserPage(),
        '/profile': (BuildContext context) => new ProfilePage(),
        '/home': (BuildContext context) => new HomeScreen(),
        '/register': (BuildContext context) => new RegisterPage(),
        '/reward': (BuildContext context) => new RewardPage()
      },
      home: LoginPage(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/offer': (BuildContext context) => new OfferList(),
        '/login': (BuildContext context) => new LoginPage(),
        '/wall': (BuildContext context) => new WallPage(),
        '/user': (BuildContext context) => new UserPage(),
        '/profile': (BuildContext context) => new ProfilePage(),
        '/home': (BuildContext context) => new HomeScreen(),
        '/register': (BuildContext context) => new RegisterPage(),
        '/reward': (BuildContext context) => new RewardPage(),
        '/offerpage': (BuildContext context) => new OfferPage()
      },
      home: HomeScreen(),
    );
  }
}
