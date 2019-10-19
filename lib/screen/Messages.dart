import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mentor_me/services/hextocolor.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white
    ));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Messages',
          style: TextStyle(color: hexToColor('#5887F9'),fontSize: 22),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
