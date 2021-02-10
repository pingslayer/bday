import 'dart:async';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }

}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/home');
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Text(
              'Shuru kare kya?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

}
