import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(login_screen());
}

class login_screen extends StatefulWidget {
  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipPath(
                  clipper: TsClip1(),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 38),
                    alignment: Alignment.center,
                    child: Text(
                      "Registor",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    width: double.infinity,
                    height: 150,
                    color: Colors.purple,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.purple),
                        ),
                        fillColor: Color(0xff888787),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.purple,
                        ),
                        hintText: 'enter your name',
                        labelText: 'Full Name',
                        labelStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.purple),
                        ),
                        fillColor: Color(0xff888787),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.purple,
                        ),
                        hintText: 'enter your Email',
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.purple),
                        ),
                        fillColor: Color(0xff888787),
                        prefixIcon: Icon(
                          Icons.phone_android,
                          color: Colors.purple,
                        ),
                        hintText: 'enter your Numper',
                        labelText: 'Phone numper',
                        labelStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.purple),
                        ),
                        fillColor: Color(0xff888787),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.purple,
                        ),
                        prefixIcon: Icon(
                          Icons.key_off,
                          color: Colors.purple,
                        ),
                        hintText: 'enter your Password',
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.purple),
                        ),
                        fillColor: Color(0xff888787),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.purple,
                        ),
                        prefixIcon: Icon(
                          Icons.key_off,
                          color: Colors.purple,
                        ),
                        hintText: 'enter your Comfirm Password',
                        labelText: 'Comfirm Password',
                        labelStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      )),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 335,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.purple,
                          primary: Colors.purple,
                          // Background color
                          onPrimary:
                              Colors.white, // Text Color (Foreground color)
                        ),
                        onPressed: () {},
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ))),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 335,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.purple,
                          primary: Colors.white,
                          // Background color
                          onPrimary:
                              Colors.purple, // Text Color (Foreground color)
                        ),
                        onPressed: () {},
                        child: Text(
                          "Log in ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TsClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(size.width / 4 - 20, size.height - 70,
        size.width / 2, size.height - 30);
    path.quadraticBezierTo(3 / 4 * size.width + 35, size.height + 20,
        size.width, size.height - 40);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
