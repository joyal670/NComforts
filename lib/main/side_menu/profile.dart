import 'package:flutter/material.dart';
import 'package:untitled/main/home/home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfilePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _emailValidate = false;
  bool _passwordValidate = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF34626C),
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.zero,
              child: Card(
                elevation: 10,
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.zero,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/images/Ellipse 44.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    color: const Color(0xFF34626C)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Change Image',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    color: const Color(0xFF999999)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Remove',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  //child: Image.asset('assets/images/Ellipse 44.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 40, right: 20, bottom: 10),
              child: TextField(
                decoration:  InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter User Name',
                    errorText: _emailValidate ? 'Name is required' : null),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 10, right: 20, bottom: 10),
              child: TextField(
                decoration:  InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter Email',
                    errorText: _emailValidate ? 'Email is required' : null),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 10, right: 20, bottom: 10),
              child: TextField(
                decoration:  InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter Mobile Number',
                    errorText: _emailValidate ? 'Mobile is required' : null),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 10, right: 20, bottom: 10),
              child: TextField(
                decoration:  InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter Address',
                    errorText: _emailValidate ? 'Address is required' : null),
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
                      'Update',
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
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }
}
