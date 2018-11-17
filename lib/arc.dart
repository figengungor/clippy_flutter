import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/arc_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';

export 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/arc_clipper.dart' show ArcType;

class Arc extends StatelessWidget {
  const Arc({
    Key key,
    @required this.height,
    @required this.child,
    this.edge = Edge.BOTTOM,
    this.arcType = ArcType.CONVEX,
  }) : super(key: key);

  /// The widget which one of [edge]s is going to be clipped as arc
  final Widget child;

  ///The height of the arc
  final double height;

  ///The edge of the widget which clipped as arc
  final Edge edge;

  ///The type of arc which can be [ArcType.CONVEX] or [ArcType.CONVEY]
  final ArcType arcType;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ArcClipper(height, edge, arcType),
      child: child,
    );
  }
}
