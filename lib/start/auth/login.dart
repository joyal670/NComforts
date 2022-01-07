import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/start/auth/forgot.dart';
import 'package:untitled/main/home/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _emailValidate = false;
  bool _passwordValidate = false;
  SharedPreferences? prefs;

  asyncFunc() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
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
                  decoration: const BoxDecoration(color: Color(0xFF34626C)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 40, right: 20, bottom: 10),
              child: TextField(
                controller: emailController,
                decoration:  InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Enter User Name',
                    hintText: 'Enter Valid email',
                    errorText: _emailValidate ? 'Email is required' : null),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 10, right: 20, bottom: 10),
              child: TextField(
                controller: passwordController,
                decoration:  InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Enter Password',
                    hintText: 'Enter passwords',
                    errorText: _passwordValidate ? 'Password is required' : null
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: const Text('Forgot Password'),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => ForgotPage())),
                ),
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
                      'Login',
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

    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => HomePage()));


    /*setState(() {
      emailController.text.isEmpty ? _emailValidate = true : _emailValidate = false;
      passwordController.text.isEmpty ? _passwordValidate = true : _passwordValidate = false;
    });*/

   /* if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
      prefs!.setString('apiToken', emailController.text.toString());
    }

    String? token = prefs!.getString('apiToken');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(' ${token!}'),
    ));*/


   /* if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      if (emailController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Email is required'),
        ));
      }
      if (passwordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Password is required'),
        ));
      }
    } else {}*/
  }


}
