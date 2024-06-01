import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/widgets/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    final notMobile = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    final padding = defaultPadding(context).value;
    final height = titleSection(context).value;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: padding ?? 15,
      ),
      child: notMobile
          ? GlassMorphism(
              heightGlass: height ?? 100,
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
              heightGlass: height ?? 70,
              startGradient: 0.9,
              endGradient: 0.1,
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
