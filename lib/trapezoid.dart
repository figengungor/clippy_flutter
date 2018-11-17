import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/trapezoid_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/edge.dart';

class Trapezoid extends StatelessWidget {
  const Trapezoid(
      {Key key, @required this.cutLength, this.child, this.edge = Edge.TOP})
      : super(key: key);

  final Widget child;
  final double cutLength;
  final Edge edge;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapezoidClipper(cutLength, edge),
      child: child,
    );
  }
}
