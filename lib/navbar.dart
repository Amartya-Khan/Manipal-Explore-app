

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home.dart';
import 'explore.dart';
import 'saved.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);
  static String id = 'Mainpage';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var padding = EdgeInsets.symmetric(horizontal: 18,vertical: 5);
  double gap =10;
  int _index = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white, title: Text("title")),
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
            decoration: BoxDecoration(
                color: Colors.white,
                //borderRadius: BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 60,
                    color: Colors.black.withOpacity(0.4),
                    offset: Offset(0,25),
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 3),
              child: GNav(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 500),
                tabs: [
                  GButton(
                    gap: gap,
                    icon: Icons.home,
                    iconColor: Colors.black,
                    iconActiveColor: Colors.purple,
                    text: 'Home',
                    textColor: Colors.purple,
                    backgroundColor: Colors.purple.withOpacity(0.2),
                    iconSize: 24,
                    padding: padding,
                  ),
                  GButton(
                    gap: gap,
                    icon: Icons.save,
                    iconColor: Colors.black,
                    iconActiveColor: Colors.pink,
                    text: 'Like',
                    textColor: Colors.pink,
                    backgroundColor: Colors.pink.withOpacity(0.2),
                    iconSize: 24,
                    padding: padding,
                  ),
                  GButton(
                    gap: gap,
                    icon: Icons.search,
                    iconColor: Colors.black,
                    iconActiveColor: Colors.grey,
                    text: 'Search',
                    textColor: Colors.grey,
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    iconSize: 24,
                    padding: padding,
                  ),
                  
                ],
                selectedIndex: _index,
                onTabChange: (index){
                  setState(() {
                    _index =index;
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
