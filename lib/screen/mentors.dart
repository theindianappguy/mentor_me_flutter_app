import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mentor_me/services/hextocolor.dart';

class Mentors extends StatefulWidget {
  @override
  _MentorsState createState() => _MentorsState();
}

class _MentorsState extends State<Mentors> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white
    ));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Mentors',
          style: TextStyle(color: hexToColor('#5887F9'),fontSize: 22),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
