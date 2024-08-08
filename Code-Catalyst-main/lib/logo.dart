import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Container(
         width: MediaQuery.of(context).size.width,
        child: Image(
            image: AssetImage('assets/images/CodeCatalyst-high-resolution-logo.png')
        ),
      ),
    );
  }
}
