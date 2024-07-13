import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TextResponsive extends StatelessWidget {
  const TextResponsive({
    required this.text,
    required this.style,
    required this.defVal,
    required this.textAlign,
    required this.textColor,
    super.key,
    this.tabVal,
    this.mobVal,
    this.maxLines,
  });

  final String text;
  final TextStyle? style;
  final double defVal;
  final double? tabVal;
  final double? mobVal;
  final int? maxLines;
  final TextAlign textAlign;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style!.copyWith(
        color: textColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: defVal,
          valueWhen: [
            Condition.smallerThan(name: DESKTOP, value: tabVal),
            Condition.smallerThan(name: TABLET, value: mobVal),
          ],
        ).value,
        overflow: TextOverflow.ellipsis,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
