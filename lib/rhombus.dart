import 'package:clippy_flutter/src/rhombus_clipper.dart';
import 'package:flutter/widgets.dart';

class Rhombus extends StatelessWidget {
  const Rhombus({Key key, this.child}) : super(key: key);

  ///The widget that is going to be clipped as rhombus
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RhombusClipper(),
      child: child,
    );
  }
}
