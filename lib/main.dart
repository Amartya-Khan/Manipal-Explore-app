import 'package:explore_manipal/beaches.dart';
import 'package:explore_manipal/individual.dart';
import 'package:explore_manipal/login.dart';
import 'package:explore_manipal/onboarding.dart';
import 'package:explore_manipal/saved.dart';
import 'package:explore_manipal/signup.dart';
import 'package:explore_manipal/highestRated.dart';
import 'package:explore_manipal/explore.dart';
import 'package:explore_manipal/home.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //   final String logoPng= 'assets/app_logo.png';
    //  final String logoSvg= 'assets/logo_final-01.svg';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
              //use for onboarding ka top text
              headline1: TextStyle(color: Colors.white, fontSize: 20))),
      routes: {
        Onboarding.id: (context) => Onboarding(),
        Login.id: (context) => Login(),
        SignupPage.id: (context) => SignupPage(),
        Home.id: (context) => Home(),
        Individual.id: (context)=> Individual(),
        Explore.id: (context) => Explore(),
        DetailsScreen.id : (content) => DetailsScreen(),
        SavedPage.id: (context) => SavedPage(),
        MainPage.id: (context) => MainPage(),
      },
      initialRoute: Onboarding.id,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('hello'),
    );
  }
}
