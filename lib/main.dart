import 'dart:async';

import 'package:figma_ui/pages/detailedpage/detail_page.dart';
import 'package:figma_ui/pages/homepage/home_screen.dart';
import 'package:figma_ui/pages/homepage/my_shops.dart';
import 'package:figma_ui/pages/loginpage/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Open sans'),
      home: Login(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Image.asset('asset/images/splash_image.png', fit: BoxFit.fill),
        ),
      ),
    );
  }
}
