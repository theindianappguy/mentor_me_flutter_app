import 'package:flutter/material.dart';
import 'package:mentor_me/services/hextocolor.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        decoration: new BoxDecoration(
          color: Colors.purple,
          gradient: new LinearGradient(
              colors: [hexToColor('#5577F7'), hexToColor('#60C3FF')],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Sign In',style: TextStyle(fontSize: 25,color: Colors.white),textAlign: TextAlign.center,),
            SizedBox(height: 100,),
            Text('Email',style: TextStyle(fontSize: 15, color: Colors.white24)),
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(fontSize: 16,color: Colors.white)
              ),
              style: TextStyle(fontSize: 16,color: Colors.white),
            ),
            Divider(height: 1,color: Colors.white24,),
            SizedBox(height: 15,),
            Text('Password',style: TextStyle(fontSize: 15, color: Colors.white24)),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(fontSize: 16,color: Colors.white)
              ),
              style: TextStyle(fontSize: 16,color: Colors.white),
            ),
            Divider(height: 1,color: Colors.white24,),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Image(
                image: AssetImage('assets/button.png'),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/register');
              },
                child: Center(
                    child: Text(
                      'REGISTER',
                      style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2.0),)
                )
            )
          ],
        ),
      )
    );
  }

}
