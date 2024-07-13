import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_portfolio/core/styles/styles.dart';
import 'package:web_portfolio/features/home/view/view.dart';

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
