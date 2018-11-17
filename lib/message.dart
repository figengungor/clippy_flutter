import 'package:clippy_flutter/src/message_clipper.dart';
import 'package:flutter/widgets.dart';

class Message extends StatelessWidget {
  const Message(
      {Key key,
      @required this.triangleX1,
      @required this.triangleX2,
      @required this.triangleX3,
      @required this.triangleY1,
      this.child})
      : super(key: key);

  ///The left corner distance of triangle to widget's left edge
  final double triangleX1;

  ///The right corner distance of triangle to widget's left edge
  final double triangleX2;

  ///The point corner distance of triangle to widget's left edge
  final double triangleX3;

  ///The message box height
  final double triangleY1;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MessageClipper(triangleX1, triangleX2, triangleX3, triangleY1),
      child: child,
    );
  }
}
