import 'package:flutter/material.dart';
import 'package:mentor_me/services/hextocolor.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            color: Colors.purple,
            gradient: new LinearGradient(
                colors: [hexToColor('#5577F7'), hexToColor('#60C3FF')],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight
            ),
          ),
          child: ListView(
            padding: EdgeInsets.fromLTRB(30, 100, 30, 30),
            children: <Widget>[
                Text('Register',style: TextStyle(fontSize: 25,color: Colors.white),textAlign: TextAlign.center,),
                SizedBox(height: 50,),
                Text('Full Name',style: TextStyle(fontSize: 15, color: Colors.white24)),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Username',
                      hintStyle: TextStyle(fontSize: 16,color: Colors.white)
                  ),
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
                Divider(height: 1,color: Colors.white24,),
                SizedBox(height: 15,),
                Text('Country',style: TextStyle(fontSize: 15, color: Colors.white24)),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Country',
                      hintStyle: TextStyle(fontSize: 16,color: Colors.white)
                  ),
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
                Divider(height: 1,color: Colors.white24,),
                SizedBox(height: 15,),
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
                  readOnly: false,
                  //for password
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(fontSize: 16,color: Colors.white)
                  ),
                ),
                Divider(height: 1,color: Colors.white24,),
                SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Image(
                    image: AssetImage('assets/register_button.png'),
                  ),
                ),
              ],
          ),
        )
    );
  }

}
