import 'package:explore_manipal/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clay_containers/clay_containers.dart';

import 'signup.dart';

class Login extends StatefulWidget {
  static String id = 'login';
  @override
  _Login createState() => new _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, height * 0.15, 0.0, 0.0),
                  child: ClayText('Welcome',
                      emboss: true,
                      spread: 2.5,
                      //depth: 35,
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.09,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, height * 0.235, 0.0, 0.0),
                  child: ClayText('Back',
                      emboss: true,
                      spread: 2.5,
                      //depth: 35,
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.1, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.58, height * 0.23, 0.0, 0.0),
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
                  SizedBox(height: 5.0),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15.0, left: 20.0),
                    child: InkWell(
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: Color(0xFF595fd9).withOpacity(0.85),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.1),
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
                                'Login',
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
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Are you new here?',
                style: GoogleFonts.montserrat(),
              ),
              SizedBox(width: 5.0),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SignupPage.id);
                },
                child: Text(
                  'Sign up',
                  style: GoogleFonts.montserrat(
                      color: Color(0xff595fd9).withOpacity(0.85),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
