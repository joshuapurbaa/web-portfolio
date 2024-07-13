import 'package:flutter/material.dart';
import 'package:web_portfolio/core/core.dart';

class RowBotton extends StatelessWidget {
  const RowBotton({
    required this.icon,
    required this.text,
    required this.onPressed,
    super.key,
    this.color = AppPalette.sageGreen,
  });

  final String icon;
  final String text;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final radius = borderRadius(context, 10, 8, 7).value;
    final space = littleSpace(context, 8, 7, 6).value;
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 10),
      ),
      color: AppPalette.primaryGreen,
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(space ?? 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              color: color,
              width: iconSize(context, 22, 18, 10).value,
            ),
            SizedBox(
              width: littleSpace(context, 10, 9, 8).value,
            ),
            TextResponsive(
              textColor: AppPalette.beige,
              textAlign: TextAlign.center,
              text: text,
              style: textStyle.labelLarge,
              defVal: 18,
              tabVal: 14,
              mobVal: 10,
            ),
          ],
        ),
      ),
    );
  }
}
