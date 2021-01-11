import 'package:clippy_flutter/src/star_clipper.dart';
import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Star extends StatelessWidget {
  const Star(
      {Key? key,
      required this.child,
      this.numberOfPoints = 6,
      this.clipShadows = const []})
      :
        assert(numberOfPoints>0),
        super(key: key);

  ///The widget that is going to be clipped as star shape
  final Widget child;

  ///The number of points of the star
  final int numberOfPoints;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = StarClipper(numberOfPoints);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
