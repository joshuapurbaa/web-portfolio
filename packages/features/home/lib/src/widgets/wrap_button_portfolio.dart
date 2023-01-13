import 'package:core/core.dart';
import 'package:flutter/material.dart';

class RowBotton extends StatelessWidget {
  const RowBotton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
    this.color = AppPalette.sageGreen,
  }) : super(key: key);

  final String icon;
  final String text;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          borderRadius(context, 10, 8, 7).value,
        ),
      ),
      color: AppPalette.primaryGreen,
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(
          littleSpace(context, 8, 7, 6).value,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              color: color,
              width: iconSize(context, 22, 18, 10).value,
              package: 'home',
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
