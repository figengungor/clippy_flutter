import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/triangle_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/edge.dart';

class Triangle extends StatelessWidget {
  const Triangle(
      {Key key,
      this.trianglePercentLeft,
      this.trianglePercentRight,
      this.trianglePercentEdge,
      this.child,
      this.edge = Edge.RIGHT})
      : super(key: key);

  const Triangle.isosceles({Key key, this.child, this.edge = Edge.RIGHT})
      : this.trianglePercentRight = 0,
        this.trianglePercentLeft = 0,
        this.trianglePercentEdge = 0.5,
        super(key: key);

  final Widget child;
  final double trianglePercentLeft;
  final double trianglePercentRight;
  final double trianglePercentEdge;
  final Edge edge;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TriangleClipper(
          trianglePercentLeft, trianglePercentRight, trianglePercentEdge, edge),
      child: child,
    );
  }
}
