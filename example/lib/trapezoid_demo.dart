import 'package:flutter/material.dart';
import 'package:clippy_flutter/trapezoid.dart';

class TrapezoidDemo extends StatefulWidget {
  @override
  TrapezoidDemoState createState() {
    return new TrapezoidDemoState();
  }
}

class TrapezoidDemoState extends State<TrapezoidDemo> {
  bool isOn = false;
  String switchButtonText = 'on';
  Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Lights')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Trapezoid(
              cutLength: 20.0,
              child: Container(
                width: 100.0,
                height: 100.0,
                child: Image.asset(
                  'assets/new_york.png',
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.darken,
                  color: Colors.yellow,
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 10.0,
                        height: 70.0,
                        color: Colors.brown,
                      ),
                      Container(
                        width: 50.0,
                        height: 10.0,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Trapezoid(
                    cutLength: 20.0,
                    child: Container(
                      width: 140.0,
                      height: 100.0,
                      color: color,
                    ),
                  ),
                ),
              ],
            ),
            FlatButton(
              color: Colors.pink,
              child: Text(
                'Turn $switchButtonText',
              ),
              onPressed: () {
                if (isOn) {
                  setState(() {
                    color = Colors.transparent;
                    switchButtonText = 'on';
                    isOn = false;
                  });
                } else {
                  setState(() {
                    color = Colors.white.withOpacity(0.6);
                    switchButtonText = 'off';
                    isOn = true;
                  });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
