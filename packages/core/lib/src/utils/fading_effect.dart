import 'package:flutter/material.dart';

class FadingEffect extends CustomPainter {

  FadingEffect({required this.begin, required this.end});
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  @override
  void paint(Canvas canvas, Size size) {
    final rect =
        Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height));
    final lg = LinearGradient(
      begin: begin,
      end: end,
      colors: const [
        //create 2 white colors, one transparent
        Color.fromARGB(0, 255, 255, 255),
        Color.fromARGB(0, 255, 255, 255),
        Color.fromARGB(0, 255, 255, 255),
        Color.fromARGB(255, 255, 255, 255),
      ],
    );
    final paint = Paint()..shader = lg.createShader(rect);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(FadingEffect oldDelegate) => false;
}
