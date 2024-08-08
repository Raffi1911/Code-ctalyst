import 'dart:async';

import 'package:CodeCatalyst/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffe7f0fd),Color(0xffaccbee)
                ])
        ),
    child: Center(
    child: Container(
    width: 300,
    child: Image(
    image: AssetImage('assets/images/CatalystLogo.png')
    ),
    ),
    ),
      )
    );
  }
}