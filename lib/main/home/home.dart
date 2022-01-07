import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/main/side_menu/bank.dart';
import 'package:untitled/main/side_menu/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tcontroller;
  final List<String> titleList = ["", ""];
  String? currentTitle;

  @override
  void initState() {
    currentTitle = titleList[0];
    _tcontroller = TabController(length: 2, vsync: this);
    _tcontroller.addListener(changeTitle); // Registering listener
    super.initState();
  }

  void changeTitle() {
    setState(() {
      currentTitle = titleList[_tcontroller.index];
    });
  }

  @override
  void dispose() {
    _tcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: const Color(0xFF34626C),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              indicatorColor: const Color(0xFFC6B497),
              controller: _tcontroller,
              tabs: [
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset('assets/images/bar-chart-2.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('My Property')
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset('assets/images/message-square.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Enquiries')
                    ],
                  ),
                )
              ],
            ),
            //title: Text(currentTitle.toString),
          ),
          body: TabBarView(controller: _tcontroller, children: const [
            Icon(Icons.directions_bike),
            Icon(Icons.directions_boat)
          ]),
          drawer: Drawer(
            backgroundColor: const Color(0xFF34626C),
            child: Column(
              children: <Widget>[
                createDrawerHeader(),
                const ListTile(
                  title: SizedBox(
                    width: double.infinity,
                    height: 5,
                  ),
                ),
                createDrawerBodyItem(
                    icon: 'assets/images/Frame.svg',
                    text: 'عربى',
                    onTap: () {
                      createLangAlert(context);
                    }),
                createDrawerBodyItem(
                    icon: 'assets/images/user.svg',
                    text: 'My Profile',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => ProfilePage()));
                    }),
                createDrawerBodyItem(
                    icon: 'assets/images/bar-chart-.svg',
                    text: 'My Properties',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                    }),
                createDrawerBodyItem(
                    icon: 'assets/images/dollar-sign.svg',
                    text: 'Bank Details',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => BankPage()));
                    }),
                const ListTile(
                  title: SizedBox(
                    width: double.infinity,
                    height: 50,
                  ),
                ),
                createDrawerBodySubItem(
                    text: 'Legal Information', onTap: () {}),
                createDrawerBodySubItem(text: 'Privacy Policy', onTap: () {}),
                createDrawerBodySubItem(text: 'FAQ', onTap: () {}),
                createDrawerBodySubItem(text: 'Feedback', onTap: () {}),
                createDrawerBodySubItem(text: 'Logout', onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future createLangAlert(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text("Select Language"),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: const Text('English'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: const Text('Arabic'),
            )
          ],
        );
      });
}

Widget createDrawerBodySubItem({
  String? text,
  GestureTapCallback? onTap,
}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            text!,
            style: const TextStyle(color: Colors.white),
          ),
        )
      ],
    ),
    onTap: onTap,
    dense: true,
    visualDensity: const VisualDensity(vertical: -3),
  );
}

Widget createDrawerBodyItem({
  String? icon,
  String? text,
  GestureTapCallback? onTap,
}) {
  return ListTile(
      title: Row(
        children: <Widget>[
          SvgPicture.asset(
            icon!,
            color: const Color(0xFFC6B497),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text!,
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      onTap: onTap,
      dense: true);
}

Widget createDrawerHeader() {
  return Container(
    width: double.infinity,
    height: 200,
    child: SizedBox(
      width: double.infinity,
      child: DrawerHeader(
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
              color: Colors.white, shape: BoxShape.rectangle),
          child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.zero,
              child: Image.asset('assets/images/Ellipse 44.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Daniel A. Castiglia',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('ThomasMBain@dayre.com'),
            ),
          ])),
    ),
  );
}
