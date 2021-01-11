import 'package:clippy_flutter/src/rabbet_clipper.dart';
import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Rabbet extends StatelessWidget {
  const Rabbet(
      {Key? key,
      required this.cutLength,
      required this.child,
      this.clipShadows = const []})
      : super(key: key);

  ///The widget that is going to be clipped as rabbet shape
  final Widget child;

  ///The side length of square that is used to clip corners of the [child]
  final double cutLength;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = RabbetClipper(cutLength);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
