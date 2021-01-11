import 'package:clippy_flutter/src/ticket_clipper.dart';
import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Ticket extends StatelessWidget {
  const Ticket({
    Key? key,
    required this.radius,
    required this.child,
    this.clipShadows = const [],
  }) : super(key: key);

  ///The widget that is going to be clipped as ticket shape
  final Widget child;

  ///The radius of the circle that is used to clip corners of the [child]
  final double radius;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = TicketClipper(radius);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
