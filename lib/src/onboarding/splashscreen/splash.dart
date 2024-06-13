import 'dart:async';

import 'package:fitdaily/src/onboarding/appIntro/onboard.dart';
import "package:flutter/material.dart";

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  static const routeName = "/splash";

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();


    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 4000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboard()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0d0d0d),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 230,
              width: 200,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/logo.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}