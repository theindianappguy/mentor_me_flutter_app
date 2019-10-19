import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mentor_me/services/hextocolor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // Use Brightness.light for dark status bar
        // or Brightness.dark for light status bar
        brightness: Brightness.light,
        title: Text(
          'Featured',
          style: TextStyle(color: hexToColor('#5887F9'), fontSize: 22),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          new IconButton(
            icon: new Image.asset(
              'assets/searchicon.png',
              height: 20,
              width: 20,
            ),
            tooltip: 'Filter',
            onPressed: () {},
          ),
        ],
        leading:
            new Image.asset('assets/filtersicon.png', height: 20, width: 20),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            /*Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('RATING',style: TextStyle(fontSize: 13),),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  'assets/down-arrow.png',
                  height: 10,
                  width: 10,
                )
              ],
            ),*/
            SizedBox(
              height: 20,
            ),
            getListView()
          ],
        ),
      ),
    );
  }

  Widget getListView() {
    var listiew = ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.black54,
                    ],
                    stops: [0.5, 1.0],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.repeated,
                  ),
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1519160558534-579f5106e43f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 140,30, 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Lucy Lee',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Photographer, New York',
                      textAlign: TextAlign.center,
                      style: TextStyle(letterSpacing: 1,color: Colors.white),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lacinia velit vitae iaculis iaculis. Ut feugiat eget magna eget sodales. Proin tempus sed justo nec viverra. In eu erat ac lacus efficitur facilisis. Integer nec nisi eros. Vestibulum finibus mi tellus, non dapibus eros pretium a',
                      textAlign: TextAlign.center,
                      style: TextStyle(letterSpacing: 1,color: Colors.white70),
                    )
                  ],
                ),
              ),
            ),
            Divider(height: 20,),
          ],
        )
      ],
    );

    return listiew;
  }
}
