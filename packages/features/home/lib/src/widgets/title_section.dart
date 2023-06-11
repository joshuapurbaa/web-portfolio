import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'widgets.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final notMobile = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding(context).value),
      child: notMobile
          ? GlassMorphism(
              heightGlass: titleSection(context).value,
              startGradient: 0.9,
              endGradient: 0.5,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              child: TextResponsive(
                textColor: AppPalette.primaryGreen,
                text: title,
                style: Theme.of(context).textTheme.headlineLarge,
                defVal: 50,
                tabVal: 35,
                mobVal: 25,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            )
          : GlassMorphismMobile(
              heightGlass: titleSection(context).value,
              startGradient: 0.9,
              endGradient: 0.1,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              child: TextResponsive(
                textColor: AppPalette.primaryGreen,
                text: title,
                style: Theme.of(context).textTheme.headlineLarge,
                defVal: 50,
                tabVal: 35,
                mobVal: 25,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}
