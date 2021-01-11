import 'package:clippy_flutter/src/buttcheek_clipper.dart';
import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class ButtCheek extends StatelessWidget {
  const ButtCheek({
    Key? key,
    required this.height,
    required this.child,
    this.clipShadows = const [],
  })  : assert(height > 0),
        super(key: key);

  ///The widget that of bottom edge is going be clipped as butt-cheek shape
  final Widget child;

  ///The height of butt-cheek arc
  final double height;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = ButtCheekClipper(height);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
