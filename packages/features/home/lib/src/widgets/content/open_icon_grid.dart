import 'package:core/core.dart';
import 'package:flutter/material.dart';

class OpenIconGrid extends StatelessWidget {
  const OpenIconGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: gridIconOpen(context).value,
        width: gridIconOpen(context).value,
        decoration: BoxDecoration(
          color: AppPalette.beige.withOpacity(0.8),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(borderRadius(context).value),
            bottomLeft: Radius.circular(borderRadius(context).value),
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
