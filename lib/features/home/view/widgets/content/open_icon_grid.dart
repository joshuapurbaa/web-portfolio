import 'package:flutter/material.dart';
import 'package:web_portfolio/core/core.dart';

class OpenIconGrid extends StatelessWidget {
  const OpenIconGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final radius = borderRadius(context).value;
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: gridIconOpen(context).value,
        width: gridIconOpen(context).value,
        decoration: BoxDecoration(
          color: AppPalette.beige.withOpacity(0.8),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(radius ?? 12),
            bottomLeft: Radius.circular(radius ?? 12),
          ),
        ),
        child: Icon(
          Icons.open_in_full_rounded,
          size: iconSize(context, 25, 20, 18).value,
          color: AppPalette.primaryGreen,
        ),
      ),
    );
  }
}
