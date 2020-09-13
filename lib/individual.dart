import 'package:clay_containers/clay_containers.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Individual extends StatefulWidget {
  static String id = 'Individual';

  @override
  _IndividualState createState() => _IndividualState();
}

class _IndividualState extends State<Individual>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        SizedBox(height: 15.0),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(Icons.shopping_cart,
                      color: Colors.black, size: 17.0)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            'Kaup',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 40.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Center(
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Details',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Reviews',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 200.0,
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              Details(),
              Details(),
            ],
          ),
        )
      ],
    ));
  }
}

class Details extends StatefulWidget {
  Details({Key key}) : super(key: key);

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
      height: 600,
      width: screen.width,
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        // boxShadow: [BoxShadow(color: Colors.black)],
        color: Colors.transparent,
      ),
      child: Stack(children: <Widget>[
        FlipCard(
          key: cardKey,
          flipOnTouch: false,
          front: Stack(children: <Widget>[
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/Kaup_beach.jpg',
                  height: 450,
                  fit: BoxFit.fill,
                  frameBuilder: (BuildContext context, Widget child, int frame,
                      bool wasSynchronouslyLoaded) {
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
            Positioned(
              top: 5,
              left: 20,
              child: Text(
                'Kaup Beach(front)',
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
              top: 10,
              child: ClayContainer(),
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
                    MaterialCommunityIcons.map_marker,
                    color: Colors.white,
                  ),
                  onPressed: () => cardKey.currentState.toggleCard(),
                ),
              ),
            ),
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
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/map2.jpg',
                  height: 450,
                  fit: BoxFit.fill,
                  frameBuilder: (BuildContext context, Widget child, int frame,
                      bool wasSynchronouslyLoaded) {
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
              top: 10,
              child: ClayContainer(),
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
        ),
      ]),
    );
  }
}
