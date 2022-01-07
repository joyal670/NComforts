import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/start/auth/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => LoginPage())));
  }

  /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          child: const Center(
              child: Text(
            'Welcome',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          )),
        ),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
       child:  Image(image: AssetImage('assets/images/ic_splash_img.jpg'),)
      ),
    );
  }
}
