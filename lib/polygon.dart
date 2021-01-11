import 'package:clippy_flutter/src/polygon_clipper.dart';
import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Polygon extends StatelessWidget {
  const Polygon({
    Key? key,
    required this.sides,
    required this.child,
    this.clipShadows = const [],
  }) : super(key: key);

  ///The widget that is going to be clipped as polygon shape
  final Widget child;

  ///The number of polygon sides
  final int sides;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = PolygonClipper(sides);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
