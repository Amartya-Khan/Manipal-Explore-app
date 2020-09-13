import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'explore.dart';

class DetailsScreen extends StatelessWidget {
  static String id = "details";
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F4EF),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Explore.id);
                        },
                        icon: Icon(MaterialCommunityIcons.chevron_left)),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 60),
            Container(
              child: header(context),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)
                      ),
                      // color: Colors.white, 
                   gradient: LinearGradient( begin: Alignment.topCenter,
                   end: Alignment.bottomCenter,
                   colors:[Colors.grey[100],
                   Colors.grey[200],
                   Colors.grey[300],
                   Colors.grey[300] ],
                   stops: [
                     0.1,
                     0.3,
                     0.7,
                     0.9
                   ]
                   ), 
                     
                  boxShadow: [
          //background color of box
          BoxShadow(
            color: Colors.grey[600],
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              4.0, // Move to right 10  horizontally
              4.0, // Move to bottom 10 Vertically
            ),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              -4.0, // Move to right 10  horizontally
              -4.0, // Move to bottom 10 Vertically
            ),
          )
        ],
        
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Name of Location",
                          ),
                          SizedBox(height: 30),
                          CourseContent(
                            number: "01",
                            duration: 150,
                            title: "Kaup beach",
                            isDone: true,
                          ),
                          CourseContent(
                            number: '02',
                            duration: 190.5,
                            title: "Hoode beach",
                            isDone: true,
                          ),
                          CourseContent(
                            number: '03',
                            duration: 153,
                            title: "Malpe beach",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isDone;
  const CourseContent({
    Key key,
    this.number,
    this.duration,
    this.title,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          SizedBox(width: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$duration kms from campus\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      height: 1.5,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.indigo,
            ),
            child:
                Icon(MaterialCommunityIcons.view_agenda, color: Colors.white),
          )
        ],
      ),
    );
  }
}

Widget header(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Positioned(
    bottom: 1.0,
    child: Stack(
      children: <Widget>[
        Positioned(
          left: 135,
          top: 0,
          child: SvgPicture.asset(
            "assets/onboarding1.svg",
            height: 220,
          ),
        ),
        Positioned(
          //left: 105,
          top: -30,
          child: Container(
            height: 230,
            width: width,
            // color: Colors.white.withAlpha(100),

            decoration: BoxDecoration(
              //color: Colors.white.withAlpha(100)
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                //stops: [0.05, 0.99],
                colors: [
                  //Colors.white.withAlpha(150),
                  Colors.grey[50].withAlpha(10),
                  // Colors.white.withAlpha(70),
                  // Colors.white.withAlpha(60),
                  //Colors.grey[50].withAlpha(70),
                  Colors.grey[50].withAlpha(70),
                  Colors.white.withAlpha(150),
                  //Colors.white.withAlpha(220),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 17,
          child: Text(
            "Notifications",
          ),
        ),
        Positioned(
          child: Container(
            height: height * 0.23,
            width: double.infinity,
          ),
        ),
      ],
      overflow: Overflow.visible,
    ),
  );
}
