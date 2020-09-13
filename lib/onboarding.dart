import 'package:explore_manipal/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';

class Onboarding extends StatefulWidget {
  static String id = 'onboarding';

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
   int _current = 0;

  final List svgList = [
    'assets/onboarding1.svg',
    'assets/test.svg',
    'assets/onboarding1.svg'

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
        body: Stack(
        
                  children: <Widget>[LiquidSwipe(
              enableLoop: false,
              fullTransitionValue: 400,
              waveType: WaveType.circularReveal,
              pages: [
                Container(
                  color: Color(0xffECEFFF),
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
                              child: Text(
                                'skip',
                                style: TextStyle(fontSize: 18),
                              ))),
                      Center(
                          child: SvgPicture.asset(
                        svgList[0],
                        height: 500,
                      )),
                      Center(
                          child: Text(
                        'skip',
                        style: TextStyle(fontSize: 35),
                      )),
                      Center(
                          child: Text(
                        'skip',
                        style: TextStyle(fontSize: 20),
                      )),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff3f4173),
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
                              child: Text(
                                'skip',
                                style: TextStyle(fontSize: 18),
                              ))),
                      Center(
                          child: SvgPicture.asset(
                        svgList[1],
                        height: 500,
                      )),
                      Center(
                          child: Text(
                        'skip',
                        style: TextStyle(fontSize: 35),
                      )),
                      Center(
                          child: Text(
                        'skip',
                        style: TextStyle(fontSize: 20),
                      )),
                    ],
                  ),
                ),
                Container(
                  
                  color: Color(0xffd97334),
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
                              child: Text(
                                'skip',
                                style: TextStyle(fontSize: 18),
                              ))),
                      Center(
                          child: SvgPicture.asset(
                        svgList[0],
                        height: 500,
                      )),
                      Center(
                          child: Text(
                        'skip',
                        style: TextStyle(fontSize: 35),
                      )),
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
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80.0))),
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: const Text('Gradient Button',
                              style: TextStyle(fontSize: 20)),
                        ),
                      )),
                    ],
                  ),
                ),
                //Container(color: Color(0xff913a37),),
              ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(color: Colors.white,
                height: 50,
                width: 100,
                child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(svgList, (index, item) {
              return Container(
                //color: Colors.red,
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 2.0
                ),
                decoration: BoxDecoration(shape:BoxShape.circle,
                color: _current == index ? Colors.black : Colors.grey),
              );
            }),
          ),
                ),
              )
              ]
        ),
      ),
    );
  }
}
