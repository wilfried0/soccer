import 'dart:async';

import 'package:flutter/material.dart';
import 'package:soccer/constantes.dart';
import 'package:soccer/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), onLoadHome);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("CAN", style: TextStyle(
                color: BLANC,
                fontSize: SPLASH_TEXT,
                fontWeight: FontWeight.bold
            ),),
            Transform.translate(
              offset: Offset(0, -20),
              child: Text("2021", style: TextStyle(
                  color: BLANC,
                  fontSize: SPLASH_TEXT,
                  fontWeight: FontWeight.bold
              ),),
            ),
            CircularProgressIndicator(backgroundColor: Colors.pink,strokeWidth: 5)
          ],
        ),
      ),
    );
  }

  onLoadHome() async {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => Home()), (route) => false);
  }
}
