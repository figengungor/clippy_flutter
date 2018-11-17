import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/point_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/edge.dart';

class Point extends StatelessWidget {
  const Point(
      {Key key, this.triangleHeight, this.child, this.edge = Edge.RIGHT})
      : super(key: key);

  ///The widget that is going to be clipped as point shape
  final Widget child;

  ///The height of the triangle
  final double triangleHeight;

  ///The edge that Point points
  final Edge edge;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: PointClipper(triangleHeight, edge),
      child: child,
    );
  }
}
