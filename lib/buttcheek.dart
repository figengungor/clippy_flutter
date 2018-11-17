import 'package:clippy_flutter/src/buttcheek_clipper.dart';
import 'package:flutter/widgets.dart';

class ButtCheek extends StatelessWidget {
  const ButtCheek({Key key, @required this.height, this.child})
      : assert(height > 0),
        super(key: key);

  ///The widget that of bottom edge is going be clipped as butt-cheek shape
  final Widget child;

  ///The height of butt-cheek arc
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ButtCheekClipper(height),
      child: child,
    );
  }
}
