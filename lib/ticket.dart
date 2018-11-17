import 'package:clippy_flutter/src/ticket_clipper.dart';
import 'package:flutter/widgets.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key key, @required this.radius, this.child}) : super(key: key);

  ///The widget that is going to be clipped as ticket shape
  final Widget child;

  ///The radius of the circle that is used to clip corners of the [child]
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(radius),
      child: child,
    );
  }
}
