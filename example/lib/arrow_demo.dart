import 'package:flutter/material.dart';
import 'package:clippy_flutter/arrow.dart';

class ArrowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Move')),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 50.0,
              height: 50.0,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'GO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Arrow(
              triangleHeight: 20.0,
              rectangleClipHeight: 10.0,
              child: Container(
                margin: EdgeInsets.only(left: 100.0),
                width: 50.0,
                height: 70.0,
                color: Colors.pink,
                child: Center(
                  child: Icon(
                    Icons.directions_bike,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Arrow(
              edge: Edge.LEFT,
              triangleHeight: 20.0,
              rectangleClipHeight: 10.0,
              child: Container(
                margin: EdgeInsets.only(right: 100.0),
                width: 50.0,
                height: 70.0,
                color: Colors.pink,
                child: Center(
                  child: Icon(
                    Icons.directions_run,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Arrow(
              edge: Edge.TOP,
              triangleHeight: 20.0,
              rectangleClipHeight: 10.0,
              child: Container(
                margin: EdgeInsets.only(bottom: 100.0),
                width: 70.0,
                height: 50.0,
                color: Colors.pink,
                child: Center(
                  child: Icon(
                    Icons.directions_boat,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Arrow(
              edge: Edge.BOTTOM,
              triangleHeight: 20.0,
              rectangleClipHeight: 10.0,
              child: Container(
                margin: EdgeInsets.only(top: 100.0),
                width: 70.0,
                height: 50.0,
                color: Colors.pink,
                child: Center(
                  child: Icon(
                    Icons.directions_bus,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
