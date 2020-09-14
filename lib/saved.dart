import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional_switch.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      
       
      
      body:  Container(
          padding: EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: screen.height * 0.4,
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
                            padding: EdgeInsets.fromLTRB(
                                0.0, screen.height * 0.035, 0.0, 0.0),
                            child: ClayText('Your Saves',
                                emboss: true,
                                spread: 2.5,
                                //depth: 35,
                                style: GoogleFonts.montserrat(
                                    fontSize: screen.height * 0.07,
                                    fontWeight: FontWeight.bold)),
                          ),
                          // padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                          Container(
                            padding: EdgeInsets.fromLTRB(screen.width * 0.8,
                                screen.height * 0.0, 0.0, 0.0),
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
    );
  }
}
