import 'package:explore_manipal/login.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'highestRated.dart';
import 'sort.dart';
import 'saved.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);
  static String id = 'Mainpage';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var padding = EdgeInsets.symmetric(horizontal: 18, vertical: 5);
  double gap = 10;
  int _index = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.grey[800],
          ),
          title: Padding(
            padding: EdgeInsets.only(
              top: height * 0.01,
            ),
            child: Text(
              "Manipal Explore",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ),
      drawer: Container(
        //color: Color(0xff595fd9),
        child: Drawer(
            child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.2, top: height * 0.5),
              child: FlatButton(
                child: Text("Sign out"),
                // color: Color(0xff595fd9),
                onPressed: () {
                  Navigator.pushNamed(context, Login.id);
                },
              ),
            ),
          ],
        )),
      ),
      body: PageView(
          controller: controller,
          onPageChanged: (page) {
            setState(() {
              _index = page;
            });
          },
          children: [
            Home(),
            Explore(),
            SavedPage(),
          ]),
      bottomNavigationBar: SafeArea(
        child: Container(
          // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          decoration: BoxDecoration(color: Colors.white,
              //borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 60,
                  color: Colors.black.withOpacity(0.4),
                  offset: Offset(0, 25),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            child: GNav(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 500),
              tabs: [
                GButton(
                  gap: gap,
                  icon: Icons.star,
                  iconColor: Colors.black,
                  iconActiveColor: Color(0xff595fd9),
                  text: 'Highest rated',
                  textColor: Color(0xff595fd9),
                  backgroundColor: Colors.grey[300],
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: Icons.sort,
                  iconColor: Colors.black,
                  iconActiveColor: Color(0xff595fd9),
                  text: 'Sort',
                  textColor: Color(0xff595fd9),
                  backgroundColor: Colors.grey[300],
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: Icons.bookmark,
                  iconColor: Colors.black,
                  iconActiveColor: Color(0xff595fd9),
                  text: 'Your Saves',
                  textColor: Color(0xff595fd9),
                  backgroundColor: Colors.grey[300],
                  iconSize: 24,
                  padding: padding,
                ),
              ],
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
                controller.jumpToPage(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
