import 'package:flutter/material.dart';
import 'package:clippy_flutter/message.dart';

class MessageDemo extends StatelessWidget {
  static const double messageBoxWidth = 200.0;
  static const double messageBoxHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('clippy')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Message(
              triangleX1: 0.4 * messageBoxWidth,
              triangleX2: 0.5 * messageBoxWidth,
              triangleX3: 0.5 * messageBoxWidth,
              triangleY1: messageBoxHeight * 0.2,
              clipShadows: [ClipShadow(color: Colors.black)],
              child: Container(
                color: Colors.pink,
                width: messageBoxWidth,
                height: messageBoxHeight,
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: messageBoxHeight * 0.2),
                    child: Text(
                      'I have hemorrhoid!'.toUpperCase(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            SizedBox(
              width: 200.0,
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/clippy.png',
                  width: 150.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
