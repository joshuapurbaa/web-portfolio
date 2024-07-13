import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism({
    required this.child,
    required this.startGradient,
    required this.endGradient,
    required this.heightGlass,
    super.key,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
  });
  final Widget child;
  final double startGradient;
  final double endGradient;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final double heightGlass;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: heightGlass,
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
      ),
    );
  }
}
