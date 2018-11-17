import 'package:clippy_flutter/src/star_clipper.dart';
import 'package:flutter/widgets.dart';

class Star extends StatelessWidget {
  const Star({Key key, this.child, this.numberOfPoints}) : super(key: key);

  ///The widget that is going to be clipped as star shape
  final Widget child;

  ///The number of points of the star
  final int numberOfPoints;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: StarClipper(numberOfPoints),
      child: child,
    );
  }
}
