import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/arrow_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/edge.dart';

class Arrow extends StatelessWidget {
  const Arrow(
      {Key key,
      @required this.triangleHeight,
      @required this.rectangleClipHeight,
      this.child,
      this.edge = Edge.RIGHT})
      : super(key: key);

  ///The widget that is going to be clipped as arrow shape
  final Widget child;

  ///The height of the triangle part of arrow in the [edge] direction
  final double triangleHeight;

  ///The height of the rectangle part of arrow that is clipped
  final double rectangleClipHeight;

  ///The edge the arrow points
  final Edge edge;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ArrowClipper(triangleHeight, rectangleClipHeight, edge),
      child: child,
    );
  }
}
