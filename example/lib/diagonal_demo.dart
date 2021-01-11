import 'package:flutter/material.dart';
import 'package:clippy_flutter/diagonal.dart';

class DiagonalDemo extends StatefulWidget {
  @override
  DiagonalDemoState createState() {
    return new DiagonalDemoState();
  }
}

class DiagonalDemoState extends State<DiagonalDemo> {
  static final double containerHeight = 300.0;
  double clipHeight = containerHeight * 0.35;
  DiagonalPosition position = DiagonalPosition.BOTTOM_LEFT;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Diagonal(
              clipShadows: [ClipShadow(color: Colors.black)],
              position: position,
              clipHeight: clipHeight,
              child: Container(
                color: Colors.red,
                height: containerHeight,
              ),
            ),
            Positioned(
                bottom: 0.0,
                right: 0.0,
                left: 0.0,
                top: 0.0,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Nothing will be the same',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'SUPERB\nSPORTLINE',
                        style: TextStyle(
                            fontSize: 34.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            Positioned(
              bottom: -60.0,
              right: 0.0,
              left: 0.0,
              height: 140.0,
              child: AspectRatio(
                aspectRatio: 300 / 145,
                child: Image.asset(
                  'assets/car.png',
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 60.0),
        RaisedButton(
          child: Text('Change position'),
          onPressed: () {
            setState(() {
              if (position == DiagonalPosition.BOTTOM_LEFT) {
                position = DiagonalPosition.BOTTOM_RIGHT;
              } else {
                position = DiagonalPosition.BOTTOM_LEFT;
              }
            });
          },
        ),
        RaisedButton(
          child: Text('Change clipHeight'),
          onPressed: () {
            setState(() {
              if (clipHeight == containerHeight * 0.35) {
                clipHeight = containerHeight * 0.10;
              } else {
                clipHeight = containerHeight * 0.35;
              }
            });
          },
        )
      ],
    ));
  }
}
