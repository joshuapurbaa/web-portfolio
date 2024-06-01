import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/widgets/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeadlineCardTwo extends StatelessWidget {
  const HeadlineCardTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final notMobile = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    final flex = expanded(context).value;
    final height = cardHeadline(context).value;
    return Expanded(
      flex: flex ?? 1,
      child: notMobile
          ? GlassMorphism(
              heightGlass: height ?? 400,
              startGradient: 0.9,
              endGradient: 0.5,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              child: const PhotoProfile(),
            )
          : GlassMorphismMobile(
              heightGlass: height ?? 250,
              startGradient: 0.9,
              endGradient: 0.1,
              child: const PhotoProfile(),
            ),
    );
  }
}
