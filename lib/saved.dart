import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional_switch.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SavedPage extends StatefulWidget {
  static String id = 'saved';
  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  final List<String> _listItem = [
    'assets/images/Kaup_beach.jpg',
    'assets/images/Malpe beach.jpg',
    'assets/images/Mattu beach.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text("0")),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Kaup_beach.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Your Saves",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: _listItem
                    .map(
                      (item) => Container(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.black.withOpacity(.6),
                                          Colors.black.withOpacity(.1),
                                          Colors.black.withOpacity(.1),
                                          Colors.black.withOpacity(.6),
                                        ])),
                              ),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[600],
                                      blurRadius: 8.0, // soften the shadow
                                      spreadRadius: 0.0, //extend the shadow
                                      offset: Offset(
                                        0.0, // Move to right 10  horizontally
                                        1.0, // Move to bottom 10 Vertically
                                      ),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(item),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: IconButton(
                                      icon: Icon(
                                        MaterialCommunityIcons.close,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: ConditionalSwitch.single<String>(
                                    context: context,
                                    valueBuilder: (check) => item,
                                    caseBuilders: {
                                      'assets/images/Kaup_beach.jpg': (check) =>
                                          Text('Kaup Beach'),
                                      'assets/images/Malpe beach.jpg':
                                          (check) => Text('Malpe beach'),
                                      'assets/images/Mattu beach.jpg':
                                          (check) => Text('Mattu beach'),
                                    },
                                    fallbackBuilder: (BuildContext context) =>
                                        Text('None of the cases matched!'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
