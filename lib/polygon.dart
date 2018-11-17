import 'package:clippy_flutter/src/polygon_clipper.dart';
import 'package:flutter/widgets.dart';

class Polygon extends StatelessWidget {
  const Polygon({Key key, @required this.sides, this.child}) : super(key: key);

  ///The widget that is going to be clipped as polygon shape
  final Widget child;

  ///The number of polygon sides
  final int sides;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: PolygonClipper(sides),
      child: child,
    );
  }
}
