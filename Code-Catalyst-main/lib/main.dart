
import 'package:CodeCatalyst/splash.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Kanit',
        appBarTheme: AppBarTheme(
          color: Color(0xffe0eafc)
        ),
        ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      );
  }
}
