import 'package:clippy_flutter/src/bevel_clipper.dart';
import 'package:flutter/widgets.dart';

class Bevel extends StatelessWidget {
  const Bevel({Key key, @required this.cutLength, this.child})
      : super(key: key);

  ///The widget that is going to be clipped as bevel shape
  final Widget child;

  ///The length of equal side of isosceles that is used to clip corners
  final double cutLength;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BevelClipper(cutLength),
      child: child,
    );
  }
}
