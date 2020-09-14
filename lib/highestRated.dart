
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  static String id = 'home';


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;
    String check = '';
  String convert = '';

  List imgList = [
    'assets/images/Kaup_beach.jpg',
    'assets/images/MIT.jpeg',
    'assets/images/Malpe beach.jpg',
    'assets/images/Arbi falls.jpg',
    'assets/images/Hoode_Beach.jpg',
  ];
  bool saveColor0 = false;
  bool saveColor1 = false;
  bool saveColor2 = false;
  bool saveColor3 = false;
  bool saveColor4 = false;

  //mapping func for page indicator
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
     
      body: Container(
          child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          Stack(
                  children: <Widget>[
                    Container(
                  padding: EdgeInsets.fromLTRB(15.0, screen.height*0.0, 0.0, 0.0),
                  child: ClayText('Highest',
                      emboss: true,
                      spread: 2.5,
                      //depth: 35,
                      style: GoogleFonts.montserrat(
                          fontSize: screen.height * 0.07,
                          fontWeight: FontWeight.bold)),
                ),
                    Container(
                  padding: EdgeInsets.fromLTRB(15.0, screen.height*0.07, 0.0, 0.0),
                  child: ClayText('Rated',
                      emboss: true,
                      spread: 2.5,
                      //depth: 35,
                      style: GoogleFonts.montserrat(
                          fontSize: screen.height * 0.07,
                          fontWeight: FontWeight.bold)),
                ),
                // padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                    Container(
                  padding: EdgeInsets.fromLTRB(screen.width*0.5, screen.height*0.03, 0.0, 0.0),
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
          Padding(
            padding: EdgeInsets.only(
                top: screen.height * 0.05, bottom: screen.height * 0.05),
            child: CarouselSlider(
                options: CarouselOptions(
                  autoPlayAnimationDuration: Duration(milliseconds: 400),
                  height: screen.height*0.48,
                  initialPage: 0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  autoPlayInterval: Duration(seconds: 5),
                  enableInfiniteScroll: false,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: imgList.map((item) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      width: screen.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        color: Colors.transparent,
                      ),
                      child: Stack(children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            item,
                            height: 400,
                            fit: BoxFit.fill,
                            frameBuilder: (BuildContext context, Widget child,
                                int frame, bool wasSynchronouslyLoaded) {
                              return Container(
                                child: child,
                                foregroundDecoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      const Color(0xCC000000),
                                      const Color(0x00000000),
                                      const Color(0x00000000),
                                      const Color(0xCC000000),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        // Container(
                        //   height: 100,
                        //   width: 100,
                        //   color: Colors.black,
                        // ),
                        // Text(_current == 0 ?'Name1':_current == 1:'Name2', style: TextStyle(color: Colors.white),)
                        Positioned(
                          top: 5,
                          left: 200,
                          child: Container(
                            
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                      //         gradient:
                      //     LinearGradient(begin: Alignment.topCenter, colors: [
                      //   Colors.white.withOpacity(.4),
                      //   Colors.white.withOpacity(.2),
                      // ]
                      // )
                      border: Border.all(color: Colors.white),
                            ),
                                                      child: ConditionalSwitch.single<String>(
                              context: context,
                              valueBuilder: (check) => _current.toString(),
                              caseBuilders: {
                                '0': (check) => 
                                
                                IconButton(
                                  iconSize: 30,
                                      icon: saveColor0? Icon(MaterialCommunityIcons.bookmark_check):Icon(MaterialCommunityIcons.bookmark),
                                      tooltip: 'Add to favorite',
                                      color:
                                          saveColor0 ? Colors.white : Colors.white,
                                      onPressed: () => setState(
                                          () => saveColor0 = !saveColor0),
                                    ),
                                '1': (check) => IconButton(
                                      icon: Icon(MaterialCommunityIcons.pin),
                                      tooltip: 'Add to favorite',
                                      color: saveColor1
                                          ? Colors.purple
                                          : Colors.grey,
                                      onPressed: () => setState(
                                          () => saveColor1 = !saveColor1),
                                    ),
                                '2': (check) => IconButton(
                                      icon: Icon(MaterialCommunityIcons.pin),
                                      tooltip: 'Add to favorite',
                                      color: saveColor2
                                          ? Colors.purple
                                          : Colors.grey,
                                      onPressed: () => setState(
                                          () => saveColor2 = !saveColor2),
                                    ),
                                '3': (check) => IconButton(
                                      icon: Icon(MaterialCommunityIcons.pin),
                                      tooltip: 'Add to favorite',
                                      color: saveColor3
                                          ? Colors.purple
                                          : Colors.grey,
                                      onPressed: () => setState(
                                          () => saveColor3 = !saveColor3),
                                    ),
                                '4': (check) => IconButton(
                                      icon: Icon(MaterialCommunityIcons.pin),
                                      tooltip: 'Add to favorite',
                                      color: saveColor4
                                          ? Colors.purple
                                          : Colors.grey,
                                      onPressed: () => setState(
                                          () => saveColor4 = !saveColor4),
                                    ),
                              },
                              fallbackBuilder: (BuildContext context) =>
                                  Text('None of the cases matched!'),
                            ),
                          ),
                        ),

                        Positioned(
                          top: 5,
                          left: 20,
                          child: ConditionalSwitch.single<String>(
                            context: context,
                            valueBuilder: (check) => _current.toString(),
                            caseBuilders: {
                              '0': (check) => Text(
                                    'Kaup Beach',
                                    style: TextStyle(color: Colors.white),
                                  ),
                              '1': (check) => Text(
                                    'MIT',
                                    style: TextStyle(color: Colors.white),
                                  ),
                              '2': (check) => Text(
                                    'Malpe Beach',
                                    style: TextStyle(color: Colors.white),
                                  ),
                              '3': (check) => Text(
                                    'Arbi Falls',
                                    style: TextStyle(color: Colors.white),
                                  ),
                              '4': (check) => Text(
                                    'Hoode Beach',
                                    style: TextStyle(color: Colors.white),
                                  ),
                            },
                            fallbackBuilder: (BuildContext context) =>
                                Text('None of the cases matched!'),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 25,
                          child: ConditionalSwitch.single<String>(
                            context: context,
                            valueBuilder: (check) => _current.toString(),
                            caseBuilders: {
                              '0': (check) => Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                    ],
                                  ),
                              '1': (check) => Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star_half,
                                          color: Colors.white, size: 20),
                                    ],
                                  ),
                              '2': (check) => Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star_border,
                                          color: Colors.white, size: 20),
                                    ],
                                  ),
                              '3': (check) => Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star_border,
                                          color: Colors.white, size: 20),
                                    ],
                                  ),
                              '4': (check) => Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star_half,
                                          color: Colors.white, size: 20),
                                      Icon(Icons.star_border,
                                          color: Colors.white, size: 20),
                                    ],
                                  ),
                            },
                            fallbackBuilder: (BuildContext context) =>
                                Text('None of the cases matched!'),
                          ),
                        ),
                      ]),
                    );
                  });
                }).toList()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, item) {
              return Container(
                //color: Colors.red,
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.black : Colors.grey),
              );
            }),
          )
        ],
      )),
    );
  }
}

class Card extends StatelessWidget {
  Card({this.image, this.name, this.icon1, this.icon2, this.icon3});

  final String image;
  final String name;
  final String icon1;
  final String icon2;
  final String icon3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
