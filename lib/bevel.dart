import 'package:clippy_flutter/src/bevel_clipper.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
import 'package:flutter/widgets.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Bevel extends StatelessWidget {
  const Bevel(
      {Key? key,
      required this.cutLength,
      required this.child,
      this.clipShadows = const []})
      : super(key: key);

  ///The widget that is going to be clipped as bevel shape
  final Widget child;

  ///The length of equal side of isosceles that is used to clip corners
  final double cutLength;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = BevelClipper(cutLength);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
