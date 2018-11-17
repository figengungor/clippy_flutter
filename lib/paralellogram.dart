import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/parallelogram_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/edge.dart';

class Parallelogram extends StatelessWidget {
  const Parallelogram(
      {Key key, this.cutLength, this.child, this.edge = Edge.RIGHT})
      : super(key: key);

  final Widget child;
  final double cutLength;
  final Edge edge;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ParallelogramClipper(cutLength, edge),
      child: child,
    );
  }
}
