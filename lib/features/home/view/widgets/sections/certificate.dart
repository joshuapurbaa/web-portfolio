import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_portfolio/core/core.dart';
import 'package:web_portfolio/features/home/view/view.dart';

class Certificate extends StatelessWidget {
  const Certificate({super.key});

  @override
  Widget build(BuildContext context) {
    final notMobile = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    final height = certificateSectionHeight(context).value;
    if (notMobile) {
      return GlassMorphism(
        heightGlass: height ?? 630,
        startGradient: 0.9,
        endGradient: 0.5,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        child: const CertificateWidget(),
      );
    } else {
      return GlassMorphismMobile(
        heightGlass: height ?? 450,
        startGradient: 0.9,
        endGradient: 0.1,
        child: const CertificateWidget(),
      );
    }
  }
}
