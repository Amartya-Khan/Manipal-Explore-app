import 'package:explore_manipal/highestRated.dart';
import 'package:explore_manipal/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  static String id = 'onboarding';

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final List svgList = [
    'assets/onboarding0-01.svg',
    'assets/world-01.svg',
    'assets/plan-01.svg'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        body: LiquidSwipe(
            enableLoop: false,
            fullTransitionValue: 400,
            waveType: WaveType.circularReveal,
            pages: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff3f439a),
                      Color(0xff595fd9),
                      Color(0xff3f439a),
                    ],
                        stops: [
                      0.03,
                      0.5,
                      0.9
                    ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.04,
                                vertical: height * 0.02),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, Home.id);
                              },
                              child: Text(
                                'skip',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  textStyle: TextStyle(color: Colors.white),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ))),
                    Center(
                        child: Padding(
                          padding: EdgeInsets.only(left:width*0.02),
                                                  child: SvgPicture.asset(
                      svgList[0],
                      height: height*0.6,
                    ),
                        )),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.10),
                      child: Text(
                        'Want to explore Manipal?',
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
                    // SizedBox(height: height*0.1,),\
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.001),
                      child: Text(
                        "You've come to the right place!",
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          textStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
                    SizedBox(
                      height: height * 0.08,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffc7cad9),
                      Color(0xffecefff),
                      Color(0xffc7cad9),
                      //Color(0xffa5a9b4),
                    ],
                        stops: [
                      0.03,
                      0.6,
                      1
                      // 1
                    ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.02,
                                vertical: height * 0.02),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, Home.id);
                              },
                              child: Text(
                                'skip',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  textStyle: TextStyle(color: Colors.grey[700]),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ))),
                     Center(
                        child: Padding(
                          padding: EdgeInsets.only(left:width*0.02),
                                                  child: SvgPicture.asset(
                      svgList[1],
                      height: height*0.6,
                    ),
                        )),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.10),
                      child: Text(
                        'Discover the world around',
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    )),
                    // SizedBox(height: height*0.1,),\
                    SizedBox(
                      height: height * 0.01,
                    ),
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                      child: Text(
                        "Find new places to visit based on categories and preferences",
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          textStyle: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff93bfc2),
                      Color(0xffb0e3e7),
                          Color(0xff93bfc2),
                      
                      //Color(0xffa5a9b4),
                    ],
                        stops: [
                      0.01,
                      0.6,
                      1
                      // 1
                    ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(height: height*0.1,),
                     Center(
                        child: Padding(
                          padding: EdgeInsets.only(right:width*0.01),
                                                  child: SvgPicture.asset(
                      svgList[2],
                      height: height*0.5,
                    ),
                        )),
                        SizedBox(height: height*0.05,),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.10),
                      child: Text(
                        'Plan effectively',
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          fontWeight: FontWeight.w300,
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )),
                    // SizedBox(height: height*0.1,),\
                    SizedBox(
                      height: height * 0.02,
                    ),
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.15),
                      child: Text(
                        "Know how to get to the most happening places in town.",
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          textStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                        SizedBox(height: height*0.05,),

                    Center(
                        child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Login.id);
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFFd97908),
                                Color(0xFFe58107),
                                Color(0xFFfaa96a),
                              ],
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0))),
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Get started',
                            style: GoogleFonts.montserrat(
                              fontSize: 20)),
                      ),),
//                     ))
                    ),
                  ],
                ),
              ),
              //Container(color: Color(0xff913a37),),
            ]),
      ),
    );
  }
}


// Center(
//                         child: FlatButton(
//                       onPressed: () {
//                         Navigator.pushNamed(context, Login.id);
//                       },
//                       textColor: Colors.white,
//                       padding: const EdgeInsets.all(0.0),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(80.0)),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: <Color>[
//                                 Color(0xFF0D47A1),
//                                 Color(0xFF1976D2),
//                                 Color(0xFF42A5F5),
//                               ],
//                             ),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(80.0))),
//                         padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                         child: const Text('Gradient Button',
//                             style: TextStyle(fontSize: 20)),
//                       ),
//                     )),