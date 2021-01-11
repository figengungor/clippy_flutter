import 'package:flutter/material.dart';
import 'package:clippy_flutter/arc.dart';

class ArcDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          Arc(
            height: 30.0,
            clipShadows: [ClipShadow(color: Colors.black)],
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/james_dean.png',
                  fit: BoxFit.cover,
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  leading: IconButton(
                      icon: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 32.0,
                      ),
                      onPressed: () => Navigator.pop(context)),
                ),
                Positioned(
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: Container(
                    height: 30.0,
                    color: Colors.black.withOpacity(0.6),
                    child: Center(
                      child: Text(
                        'JAMES DEAN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Synopsis',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 16.0),
                Text(
                    'James Dean was born on February 8, 1931, in Marion, Indiana. '
                    'He starred in the film adaptation of the John Steinbeck novel '
                    'East of Eden, for which he received a posthumous Oscar '
                    'nomination. Dean\'s next starring role as an emotionally '
                    'tortured teen in Rebel Without a Cause made him into the '
                    'embodiment his generation. In early autumn 1955, Dean was killed '
                    'in a car crash, quickly becoming an enduring film icon whose '
                    'legacy has endured for decades. His final film Giant, was also '
                    'released posthumously.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
