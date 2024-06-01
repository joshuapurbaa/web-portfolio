import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class OnhoverWidget extends StatefulWidget {
  const OnhoverWidget({required this.builder, super.key});
  final Widget Function(bool isHovered) builder;

  @override
  State<OnhoverWidget> createState() => _OnhoverWidgetState();
}

class _OnhoverWidgetState extends State<OnhoverWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity();
    final transform = isHovered ? hoverTransform : Matrix4.identity();
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        curve: Sprung.overDamped,
        duration: const Duration(milliseconds: 500),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
