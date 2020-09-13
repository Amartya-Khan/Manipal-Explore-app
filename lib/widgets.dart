import 'package:flutter/material.dart';

class RoundedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RoundedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(gradient: gradient, boxShadow: [
        BoxShadow(
          color: Colors.grey[500],
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}

// back: Stack(children: <Widget>[
//               Container(
//                 height: screen.height,
//                 width: screen.width,
//                 color: Colors.transparent,
//               ),
//               Stack(children: <Widget>[
//                 Positioned(
//                   child: Align(
//                     alignment: Alignment.topCenter,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10.0),
//                       child: Image.asset(
//                         'assets/images/map2.jpg',
//                         height: 400,
//                         width: screen.width * 0.8,
//                         fit: BoxFit.fill,
//                         frameBuilder: (BuildContext context, Widget child,
//                             int frame, bool wasSynchronouslyLoaded) {
//                           return Container(
//                             child: child,
//                             foregroundDecoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topCenter,
//                                 end: Alignment.bottomCenter,
//                                 colors: [
//                                   const Color(0xCC000000),
//                                   const Color(0x00000000),
//                                   const Color(0x00000000),
//                                   const Color(0xCC000000),
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 5,
//                   left: 20,
//                   child: Text(
//                     'Kaup Beach(back)',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                 Positioned(
//                   left: 20,
//                   top: 25,
//                   child: Row(
//                     children: <Widget>[
//                       Icon(
//                         Icons.star,
//                         color: Colors.white,
//                         size: 20,
//                       ),
//                       Icon(Icons.star, color: Colors.white, size: 20),
//                       Icon(Icons.star, color: Colors.white, size: 20),
//                       Icon(Icons.star, color: Colors.white, size: 20),
//                       Icon(Icons.star, color: Colors.white, size: 20),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   top: 5,
//                   left: 200,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       //         gradient:
//                       //     LinearGradient(begin: Alignment.topCenter, colors: [
//                       //   Colors.white.withOpacity(.4),
//                       //   Colors.white.withOpacity(.2),
//                       // ]
//                       // )
//                       border: Border.all(color: Colors.white),
//                     ),
//                     child: IconButton(
//                       iconSize: 30,
//                       icon: saveColor
//                           ? Icon(MaterialCommunityIcons.bookmark_check)
//                           : Icon(MaterialCommunityIcons.bookmark),
//                       tooltip: 'Add to favorite',
//                       color: saveColor ? Colors.white : Colors.white,
//                       onPressed: () => setState(() => saveColor = !saveColor),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 280,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       //         gradient:
//                       //     LinearGradient(begin: Alignment.topCenter, colors: [
//                       //   Colors.white.withOpacity(.4),
//                       //   Colors.white.withOpacity(.2),
//                       // ]
//                       // )
//                       border: Border.all(color: Colors.white),
//                     ),
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.line_style,
//                         color: Colors.white,
//                       ),
//                       onPressed: () => cardKey.currentState.toggleCard(),
//                     ),
//                   ),
//                 ),
//               ]),
//               Positioned(
//                   child: Align(
//                 alignment: Alignment.topCenter,
//                 child:  Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Text(
//                           'Distance from Campus:',
//                           style: TextStyle(fontSize: 20.0, color: Colors.grey),
//                         ),
//                         Text(
//                           '150Kms',
//                           style: TextStyle(fontSize: 30.0, color: Colors.grey),
//                         ),
//                       ],
//                     )),
//               )
//             ]),





             