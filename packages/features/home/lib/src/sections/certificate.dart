import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widgets/widgets.dart';

class Certificate extends StatelessWidget {
  const Certificate({super.key});

  @override
  Widget build(BuildContext context) {
    final notMobile = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    if (notMobile) {
      return GlassMorphism(
        heightGlass: certificateSectionHeight(context).value,
        startGradient: 0.9,
        endGradient: 0.5,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        child: const CertificateWidget(),
      );
    } else {
      return GlassMorphismMobile(
        heightGlass: certificateSectionHeight(context).value,
        startGradient: 0.9,
        endGradient: 0.1,
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        child: const CertificateWidget(),
      );
    }
  }
}
