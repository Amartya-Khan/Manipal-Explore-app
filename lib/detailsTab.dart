import 'package:clay_containers/clay_containers.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Details extends StatefulWidget {
  static String id = 'Details';

  @override
  _DetailsState createState() => _DetailsState();
}

bool saveColor = false;

class _DetailsState extends State<Details> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
      height: screen.height,
      width: screen.width,
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        // boxShadow: [BoxShadow(color: Colors.black)],
        color: Colors.transparent,
      ),
      child: Stack(children: <Widget>[
        Container(
          width: screen.width,
          height: screen.height,
          color: Colors.transparent,
        ),
        Positioned(
          bottom: screen.height * 0.18,
          left: screen.width * 0.02,
          child: ClayContainer(
            //emboss: true,
            depth: 30,
            spread: 20,
            curveType: CurveType.concave,
            color: Colors.white,
            height: screen.height * 0.2,
            width: screen.width * 0.88,
            borderRadius: 20,
          ),
        ),
        FlipCard(
          key: cardKey,
          flipOnTouch: false,
          //
          front: Stack(children: <Widget>[
            Container(
              height: screen.height,
              width: screen.width,
              color: Colors.transparent,
            ),
            Stack(children: <Widget>[
              Positioned(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/images/Kaup_beach.jpg',
                      height: screen.height * 0.6,
                      width: screen.width * 0.88,
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
                ),
              ),
              Positioned(
                top: 5,
                left: 20,
                child: Text(
                  'Kaup Beach(front)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Positioned(
                top: 350,
                child: Row(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white),
                    ),
                    child: IconButton(
                      icon: Icon(
                        MaterialCommunityIcons.beach,
                        color: Colors.white,
                      ),
                      onPressed: () => cardKey.currentState.toggleCard(),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white),
                    ),
                    child: IconButton(
                      icon: Icon(
                        MaterialCommunityIcons.beach,
                        color: Colors.white,
                      ),
                      onPressed: () => cardKey.currentState.toggleCard(),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white),
                    ),
                    child: IconButton(
                      icon: Icon(
                        MaterialCommunityIcons.beach,
                        color: Colors.white,
                      ),
                      onPressed: () => cardKey.currentState.toggleCard(),
                    ),
                  ),
                ]),
              ),
              Positioned(
                left: 20,
                top: 25,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 20,
                    ),
                    Icon(Icons.star, color: Colors.white, size: 20),
                    Icon(Icons.star, color: Colors.white, size: 20),
                    Icon(Icons.star, color: Colors.white, size: 20),
                    Icon(Icons.star, color: Colors.white, size: 20),
                  ],
                ),
              ),
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
                  child: IconButton(
                    iconSize: 30,
                    icon: saveColor
                        ? Icon(MaterialCommunityIcons.bookmark_check)
                        : Icon(MaterialCommunityIcons.bookmark),
                    tooltip: 'Add to favorite',
                    color: saveColor ? Colors.white : Colors.white,
                    onPressed: () => setState(() => saveColor = !saveColor),
                  ),
                ),
              ),
              Positioned(
                left: 280,
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
                  child: IconButton(
                    icon: Icon(
                      Icons.pin_drop,
                      color: Colors.white,
                    ),
                    onPressed: () => cardKey.currentState.toggleCard(),
                  ),
                ),
              ),
            ]),
            Positioned(
                bottom: screen.height * 0.2,
                left: screen.width * 0.08,
                child: Container(
                  width: screen.width * 0.8,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.',
                    style: TextStyle(fontSize: 17.0, color: Colors.grey),
                  ),
                )),
          ]),

          //  Container(
          //   height: 400,
          //   color: Colors.green,
          //   child: RaisedButton(
          //     onPressed: () => cardKey.currentState.toggleCard(),
          //     child: Text('Toggle'),
          //   ),

          //-----------------------------------------------------
          back: Stack(children: <Widget>[
            Container(
              height: screen.height,
              width: screen.width,
              color: Colors.transparent,
            ),
            Stack(children: <Widget>[
              Positioned(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/images/map2.jpg',
                      height: screen.height * 0.6,
                      width: screen.width * 0.88,
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
                ),
              ),
              Positioned(
                top: 5,
                left: 20,
                child: Text(
                  'Kaup Beach(back)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Positioned(
                left: 20,
                top: 25,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 20,
                    ),
                    Icon(Icons.star, color: Colors.white, size: 20),
                    Icon(Icons.star, color: Colors.white, size: 20),
                    Icon(Icons.star, color: Colors.white, size: 20),
                    Icon(Icons.star, color: Colors.white, size: 20),
                  ],
                ),
              ),
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
                  child: IconButton(
                    iconSize: 30,
                    icon: saveColor
                        ? Icon(MaterialCommunityIcons.bookmark_check)
                        : Icon(MaterialCommunityIcons.bookmark),
                    tooltip: 'Add to favorite',
                    color: saveColor ? Colors.white : Colors.white,
                    onPressed: () => setState(() => saveColor = !saveColor),
                  ),
                ),
              ),
              Positioned(
                left: 280,
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
                  child: IconButton(
                    icon: Icon(
                      Icons.line_style,
                      color: Colors.white,
                    ),
                    onPressed: () => cardKey.currentState.toggleCard(),
                  ),
                ),
              ),
            ]),
            Positioned(
                bottom: screen.height * 0.24,
                left: screen.width * 0.17,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Distance from Campus:',
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                    ),
                    Text(
                      '150Kms',
                      style: TextStyle(fontSize: 30.0, color: Colors.grey),
                    ),
                  ],
                )),
          ]),
        ),
      ]),
    );
  }
}
