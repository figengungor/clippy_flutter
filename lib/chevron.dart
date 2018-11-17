import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/chevron_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/edge.dart';

class Chevron extends StatelessWidget {
  const Chevron(
      {Key key,
      @required this.triangleHeight,
      this.child,
      this.edge = Edge.RIGHT})
      : super(key: key);

  ///The widget that is going to be clipped as chevron shape
  final Widget child;

  ///The height of triangle
  final double triangleHeight;

  ///The edge the chevron points
  final Edge edge;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ChevronClipper(triangleHeight, edge),
      child: child,
    );
  }
}
