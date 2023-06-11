import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widgets.dart';

class HeadlineCardOne extends StatelessWidget {
  const HeadlineCardOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notMobile = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    return Expanded(
      flex: expanded(context, 2, 2, 1).value,
      child: notMobile
          ? GlassMorphism(
              heightGlass: cardHeadline(context).value,
              startGradient: 0.9,
              endGradient: 0.5,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              child: const CardOneWidget(),
            )
          : GlassMorphismMobile(
              heightGlass: cardHeadline(context).value,
              startGradient: 0.9,
              endGradient: 0.1,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              child: const CardOneWidget(),
            ),
    );
  }
}
