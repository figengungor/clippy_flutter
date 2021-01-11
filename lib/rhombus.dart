import 'package:clippy_flutter/src/rhombus_clipper.dart';
import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Rhombus extends StatelessWidget {
  const Rhombus({
    Key? key,
    required this.child,
    this.clipShadows = const [],
  }) : super(key: key);

  ///The widget that is going to be clipped as rhombus
  final Widget child;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = RhombusClipper();
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
