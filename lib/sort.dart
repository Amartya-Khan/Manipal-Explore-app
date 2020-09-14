import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  static String id = 'explore';
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
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
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              
              Container(
                width: double.infinity,
                height: screen.height*0.4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView(
                    //: MainAxisAlignment.end,
                    children: <Widget>[
                      Stack(
                children: <Widget>[
                  Container(
                    // padding: EdgeInsets.fromLTRB(
                    //     15.0, screen.height * 0.0, 0.0, 0.0),
                    child: ClayText('Sort by',
                        emboss: true,
                        spread: 2.5,
                        //depth: 35,
                        style: GoogleFonts.montserrat(
                            fontSize: screen.height * 0.07,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        0.0, screen.height * 0.07, 0.0, 0.0),
                    child: ClayText('category',
                        emboss: true,
                        spread: 2.5,
                        //depth: 35,
                        style: GoogleFonts.montserrat(
                            fontSize: screen.height * 0.07,
                            fontWeight: FontWeight.bold)),
                  ),
                  // padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        screen.width * 0.66, screen.height * 0.03, 0.0, 0.0),
                    child: ClayText('.',
                        depth: 70,
                        spread: 5,
                        color: Colors.grey[100],
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  )
                ],
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
