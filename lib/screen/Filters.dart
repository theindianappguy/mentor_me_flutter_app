import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mentor_me/services/hextocolor.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white
    ));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Filters',
          style: TextStyle(color: hexToColor('#5887F9'),fontSize: 22),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }


}
