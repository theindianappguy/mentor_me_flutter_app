import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mentor_me/screen/Home.dart';
import 'package:mentor_me/screen/SignIn.dart';

/*added to check if logged in or not*/
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  bool isloggedin = false;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => isloggedin ? Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Home())) : Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => SignIn())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image(
          height: 150,
          width: 150,
          image: AssetImage('assets/logo.png',),
        ),
      ) ,
    );
  }
}

