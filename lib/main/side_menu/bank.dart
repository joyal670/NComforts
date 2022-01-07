import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankPage extends StatefulWidget {
  @override
  _BankScreenState createState() => _BankScreenState();
}

class _BankScreenState extends State<BankPage> {
  List<String> course = [
    "c",
    "c++",
    "java",
    "kotlin",
    "objective c",
    "swift",
    "php"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF34626C),
        title: const Text('Bank Details'),
        actions: <Widget>[
          Row(
            children: <Widget>[
              SvgPicture.asset('assets/images/plus-circle.svg'),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Add Account'),
              )
            ],
          ),
          
        ],
      ),
      body: ListView.builder(
          itemCount: course.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              child: ListTile(
                title: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'Account Name :',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'xxxxx',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'Account Number :',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'xxxxx',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'IFSC Code :',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'xxxxx',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'Bank Name :',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'xxxxx',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'Branch Name :',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'xxxxx',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
