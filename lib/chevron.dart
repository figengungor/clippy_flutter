import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/chevron_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/edge.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Chevron extends StatelessWidget {
  const Chevron(
      {Key? key,
      required this.triangleHeight,
      required this.child,
      this.edge = Edge.RIGHT,
      this.clipShadows = const []})
      : super(key: key);

  ///The widget that is going to be clipped as chevron shape
  final Widget child;

  ///The height of triangle
  final double triangleHeight;

  ///The edge the chevron points
  final Edge edge;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = ChevronClipper(triangleHeight, edge);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
