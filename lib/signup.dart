import 'package:explore_manipal/home.dart';
import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  static String id = 'signup';
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                  padding: EdgeInsets.fromLTRB(15.0, height*0.15, 0.0, 0.0),
                  child: ClayText('Signup',
                      emboss: true,
                      spread: 2.5,
                      //depth: 35,
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.09,
                          fontWeight: FontWeight.bold)),
                ),
                // padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                    Container(
                  padding: EdgeInsets.fromLTRB(width*0.73, height*0.135, 0.0, 0.0),
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
              ),
              Container(
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      ClayContainer(
                    emboss: true,
                    spread: 4,
                    borderRadius: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 15, top: 5, right: 10),
                          border: InputBorder.none,
                          labelText: 'Email',
                          labelStyle: GoogleFonts.montserrat(
                              //fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent))),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ClayContainer(
                    emboss: true,
                    spread: 4,
                    borderRadius: 30,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 15, top: 5, right: 10),
                          border: InputBorder.none,
                          labelText: 'Password',
                          labelStyle: GoogleFonts.montserrat(
                              //fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent))),
                    ),
                  ),
                      SizedBox(height: 20.0),
                      ClayContainer(
                    emboss: true,
                    spread: 4,
                    borderRadius: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 15, top: 5, right: 10),
                          border: InputBorder.none,
                          labelText: 'Phone Number',
                          labelStyle: GoogleFonts.montserrat(
                              //fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent))),
                    ),
                  ),
                      SizedBox(height: 50.0),
                      FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MainPage.id);
                    },
                    textColor: Colors.white,
                    //padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Center(
                        child: ClayContainer(
                          depth: 40,
                          //curveType: CurveType.concave,
                          borderRadius: 30,
                          height: height * 0.07,
                          width: width * 0.6,
                          //  ),

                          child: Center(
                            child: Expanded(
                              // widthFactor: 0.5,
                              // heightFactor: 0.5,
                              child: Text(
                                'Signup',
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    color: Color(0xFF595fd9),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                      SizedBox(height: 20.0),
                      FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    textColor: Colors.white,
                    //padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Center(
                        child: ClayContainer(
                          depth: 40,
                          //curveType: CurveType.concave,
                          borderRadius: 30,
                          height: height * 0.07,
                          width: width * 0.6,
                          //  ),

                          child: Center(
                            child: Expanded(
                              // widthFactor: 0.5,
                              // heightFactor: 0.5,
                              child: Text(
                                'Go Back',
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    color: Color(0xFF595fd9),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                    ],
                  )),
              // SizedBox(height: 15.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Text(
              //       'New to Spotify?',
              //       style: TextStyle(
              //         fontFamily: 'Montserrat',
              //       ),
              //     ),
              //     SizedBox(width: 5.0),
              //     InkWell(
              //       child: Text('Register',
              //           style: TextStyle(
              //               color: Colors.green,
              //               fontFamily: 'Montserrat',
              //               fontWeight: FontWeight.bold,
              //               decoration: TextDecoration.underline)),
              //     )
              //   ],
              // )
            ]));
  }
}
