import 'package:clippy_flutter/src/rabbet_clipper.dart';
import 'package:flutter/widgets.dart';

class Rabbet extends StatelessWidget {
  const Rabbet({Key key, @required this.cutLength, @required this.child})
      : super(key: key);

  ///The widget that is going to be clipped as rabbet shape
  final Widget child;

  ///The side length of square that is used to clip corners of the [child]
  final double cutLength;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RabbetClipper(cutLength),
      child: child,
    );
  }
}
