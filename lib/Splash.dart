import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_one/main.dart';

class SplashScreen extends StatefulWidget{
  static const themeColor1 = Color(0xFF3E67AC);
  static const themeColor2 = Color(0xFF31A1E4);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5) , (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'Uzair')));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Image.asset('assets/images/LOGO.png', height: 250, width: 250,),
          ),
      ),
    );
  }
}