import 'package:flutter/material.dart';

class HoverEffect extends StatelessWidget {
  final Widget child;
  final double startGradient;
  final double endGradient;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  // final double heightGlass;

  const HoverEffect({
    Key? key,
    required this.child,
    required this.startGradient,
    required this.endGradient,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    // required this.heightGlass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(startGradient),
            Colors.white.withOpacity(endGradient),
          ],
          begin: begin,
          end: end,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: 1.5,
          color: Colors.white.withOpacity(0.2),
        ),
      ),
      child: child,
    );
  }
}
