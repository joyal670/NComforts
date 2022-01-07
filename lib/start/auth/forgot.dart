import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPage extends StatefulWidget {
  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotPage> {
  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0),
              child: Center(
                child: Container(
                  height: 300.0,
                  width: double.infinity,
                  child: SvgPicture.asset('assets/images/ic_login_img.svg',
                      width: 10.0, height: 10.0, fit: BoxFit.scaleDown),
                  decoration: const BoxDecoration(
                    color: Color(0xFF34626C),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 40, right: 20, bottom: 10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter User Name',
                    hintText: 'Enter Valid email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, right: 20, bottom: 10),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xFF34626C)),
                child: TextButton(
                    onPressed: () => {validate()},
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  void validate() {
    if (emailController.text.isEmpty) {
      if (emailController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Email is required'),
        ));
      }
    } else {}
  }
}
