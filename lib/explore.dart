import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clay_containers/clay_containers.dart';

class Explore extends StatefulWidget {
  static String id = 'explore';
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final List<String> _listItem = [
    'assets/images/beach.jpg',
    'assets/images/fall.jpg',
    'assets/images/nature.jpg',
    'assets/images/food.jpg',
    'assets/images/game.jpg',
    'assets/images/club.jpg',
    'assets/images/all.jpg',
  ];

  final List<Widget> _icons = [
    Icon(MaterialCommunityIcons.beach, color: Colors.grey[500]),
    Icon(MaterialCommunityIcons.leaf, color: Colors.grey[500]),
    Icon(MaterialCommunityIcons.food_fork_drink, color: Colors.grey[500]),
    Icon(MaterialCommunityIcons.gamepad_variant, color: Colors.grey[500]),
    Icon(MaterialCommunityIcons.music_note, color: Colors.grey[500]),
    Icon(MaterialCommunityIcons.expand_all, color: Colors.grey[500]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        title: Text(
          "Explore",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     image: DecorationImage(
                //         image: AssetImage('assets/images/one.jpg'),
                //         fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // gradient:
                    //     LinearGradient(begin: Alignment.bottomRight, colors: [
                    //   Colors.black.withOpacity(.4),
                    //   Colors.black.withOpacity(.2),
                    // ]
                    // )
                  ),
                  child: ListView(
                    //: MainAxisAlignment.end,
                    children: <Widget>[
                      ClayText(
                        "Sort by category",
                        emboss: true,
                        spread: 1,
                        style: TextStyle(
                          //color: Colors.grey,
                          fontSize: 35,
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Positioned(
                          child: SvgPicture.asset(
                        'assets/onboarding1.svg',
                        height: 250,
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  shadowColor: Color(0x55434343),
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _icons
                    .map((item) => Container(
                          color: Colors.transparent,
                          width: double.infinity,

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClayContainer(
                              depth: 10,
                              spread: 5,
                              emboss: true,
                              color: Color(0xFFF2F2F2),
                              height: 150,
                              width: 150,
                              borderRadius: 75,
                              curveType: CurveType.convex,
                              child: IconButton(
                                icon: (item),
                                onPressed: () {},
                              ),
                            ),
                          ),

                          //                   child: Container(
                          //                     color: Colors.white,
                          // child: Center(
                          //   child: ClayContainer(
                          //     color: Colors.white,
                          //     height: 200,
                          //     width: 200,
                          //   ),
                          // ),
                          //                     // decoration: BoxDecoration(
                          //                     //     borderRadius: BorderRadius.circular(20),
                          //                     //     image: DecorationImage(
                          //                     //         image: AssetImage(item),
                          //                     //         fit: BoxFit.cover)),
                          //                     // child: Transform.translate(
                          //                     //   offset: Offset(50, -50),
                          //                     //   child: Container(
                          //                     //     margin: EdgeInsets.symmetric(
                          //                     //         horizontal: 65, vertical: 63),
                          //                     //     decoration: BoxDecoration(
                          //                     //         borderRadius: BorderRadius.circular(10),
                          //                     //         color: Colors.white),
                          //                     //     child: Icon(
                          //                     //       Icons.bookmark_border,
                          //                     //       size: 15,
                          //                     //     ),
                          //                     //   ),
                          //                     // ),
                          //                   ),
                        ))
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
