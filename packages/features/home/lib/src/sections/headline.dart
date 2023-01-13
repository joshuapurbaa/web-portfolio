import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widgets/widgets.dart';

class Headline extends StatelessWidget {
  const Headline({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: headlineSectionHeight(context).value,
      child: ResponsiveRowColumn(
        columnSpacing: defaultPadding(context).value,
        rowSpacing: defaultPadding(context).value,
        layout: ResponsiveWrapper.of(context).isLargerThan(MOBILE)
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
