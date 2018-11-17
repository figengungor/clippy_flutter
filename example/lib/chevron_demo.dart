import 'package:flutter/material.dart';
import 'package:clippy_flutter/chevron.dart';

class ChevronDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TRAVEL'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 16.0),
                Text(
                  'NEW YORK',
                  style: TextStyle(
                      fontSize: 36.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 16.0),
                Chevron(
                  triangleHeight: 50.0,
                  child: Image.asset(
                    'assets/new_york.png',
                    width: 100.0,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'İSTANBUL',
                  style: TextStyle(
                      fontSize: 36.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 16.0),
                Chevron(
                  triangleHeight: 50.0,
                  edge: Edge.LEFT,
                  child: Image.asset(
                    'assets/istanbul.png',
                    width: 100.0,
                  ),
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ));
  }
}
