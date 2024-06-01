import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/widgets/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Headline extends StatelessWidget {
  const Headline({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    return SizedBox(
      height: headlineSectionHeight(context).value,
      child: ResponsiveRowColumn(
        columnSpacing: defaultPadding(context).value,
        rowSpacing: defaultPadding(context).value,
        layout: isDesktop
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        columnVerticalDirection: VerticalDirection.up,
        children: const [
          ResponsiveRowColumnItem(
            child: HeadlineCardOne(),
          ),
          ResponsiveRowColumnItem(
            child: HeadlineCardTwo(),
          ),
        ],
      ),
    );
  }
}
