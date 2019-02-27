import 'package:flutter/material.dart';
import 'package:clippy_flutter/buttcheek.dart';

class ButtCheekDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Goodreads')),
      body: Stack(
        children: <Widget>[
          ButtCheek(
            clipShadows: [ClipShadow(color: Colors.black)],
            height: 20.0,
            child: Container(
              child: Image.asset('assets/coffee.png'),
            ),
          ),
        ],
      ),
    );
  }
}
