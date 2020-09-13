import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Reviews extends StatefulWidget {
  Reviews({Key key}) : super(key: key);

  @override
  _ReviewsState createState() => _ReviewsState();
}

bool saveColor = false;

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return ListView(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 30),
        child: ClayContainer(
            //emboss: true,
            depth: 30,
            //spread: 10,
            emboss: true,
            //curveType: CurveType.concave,
            color: Colors.white,
            height: screen.height * 0.2,
            width: screen.width * 0.88,
            borderRadius: 20,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Share your experience",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star_border,
                        color: Colors.black,
                        size: 20,
                      ),
                      Icon(Icons.star_border, color: Colors.black, size: 20),
                      Icon(Icons.star_border, color: Colors.black, size: 20),
                      Icon(Icons.star_border, color: Colors.black, size: 20),
                      Icon(Icons.star_border, color: Colors.black, size: 20),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Write your review here",
                        hintStyle: TextStyle(),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: ClayContainer(
            //emboss: true,
            depth: 100,
            spread: 5,
            curveType: CurveType.none,
            color: Colors.white,
            height: screen.height * 0.2,
            width: screen.width * 0.88,
            borderRadius: 20,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/boy.jpg'),
                              radius: 25,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                "Very pleasing",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(Icons.star, color: Colors.black, size: 20),
                                Icon(Icons.star, color: Colors.black, size: 20),
                                Icon(Icons.star, color: Colors.black, size: 20),
                                Icon(Icons.star, color: Colors.black, size: 20),
                              ],
                            ),
                          ],
                        ),
                      ]),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      )),
                ],
              ),
            )),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: ClayContainer(
            //emboss: true,
            depth: 100,
            spread: 5,
            curveType: CurveType.none,
            color: Colors.white,
            height: screen.height * 0.2,
            width: screen.width * 0.88,
            borderRadius: 20,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/boy.jpg'),
                              radius: 25,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                "Very pleasing",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(Icons.star, color: Colors.black, size: 20),
                                Icon(Icons.star, color: Colors.black, size: 20),
                                Icon(Icons.star, color: Colors.black, size: 20),
                                Icon(Icons.star, color: Colors.black, size: 20),
                              ],
                            ),
                          ],
                        ),
                      ]),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      )),
                ],
              ),
            )),
      ),
      
    ]);
  }
}
