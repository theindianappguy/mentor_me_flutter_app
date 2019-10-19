import 'package:flutter/material.dart';
import 'package:mentor_me/screen/Home.dart';
import 'package:mentor_me/screen/Messages.dart';
import 'package:mentor_me/screen/Register.dart';
import 'package:mentor_me/screen/SignIn.dart';
import 'package:mentor_me/screen/SplashScreen.dart';
import 'package:mentor_me/screen/mentors.dart';
import 'package:mentor_me/screen/settings.dart';

void main() => runApp(MaterialApp(
      // Set Raleway as the default app font.
      theme: ThemeData(fontFamily: 'Gibson'),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Home(),
        '/signin': (context) => SignIn(),
        '/register': (context) => Register(),
        '/mentors' : (context) => Mentors(),
        '/messages' : (context) => Messages(),
        '/settings' : (context) => Settings()
      },
    ));
