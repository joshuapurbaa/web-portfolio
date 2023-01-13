import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double startGradient;
  final double endGradient;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  final double heightGlass;

  const GlassMorphism({
    Key? key,
    required this.child,
    required this.startGradient,
    required this.endGradient,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    required this.heightGlass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          height: heightGlass,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/noiseBg.png', package: 'home'),
              fit: BoxFit.cover,
              opacity: 0.05,
            ),
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
      ),
    );
  }
}
