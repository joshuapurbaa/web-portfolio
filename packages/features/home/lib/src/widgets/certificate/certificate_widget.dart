import 'package:core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets.dart';

class CertificateWidget extends StatelessWidget {
  const CertificateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final notMobile = ResponsiveWrapper.of(context).isLargerThan(MOBILE);
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        final data = provider.certificatePathList;
        return Column(
          children: [
            notMobile
                ? SizedBox(height: defaultPadding(context).value)
                : const SizedBox(),
            Expanded(
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  },
                ),
                child: PageView.builder(
                  controller: provider.controller,
                  itemCount: data.length,
                  onPageChanged: (value) {
                    provider.getIndex(value);
                  },
                  itemBuilder: (context, index) {
                    final certificate = data[index];

                    return Image(
                      image: AssetImage(
                        certificate.path[0],
                        package: 'home',
                      ),
                      fit: BoxFit.contain,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: certificateSectionHeight(context).value * 0.30,
              child: Column(
                children: [
                  notMobile
                      ? SizedBox(height: defaultPadding(context).value)
                      : const SizedBox(),
                  SmoothPageIndicator(
                    controller: provider.controller,
                    count: provider.certificatePathList.length,
                    effect: WormEffect(
                      dotColor: AppPalette.primaryGreen.withOpacity(0.5),
                      activeDotColor: AppPalette.primaryGreen,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(defaultPadding(context).value),
                    child: TextButtonIcon(
                      url: data[provider.helperIndex].link,
                      icon: 'assets/certificate.png',
                      label: 'Certificate Link',
                    ),
                  ),
                  TextResponsive(
                    textColor: AppPalette.primaryGreen,
                    text: data[provider.helperIndex].name,
                    style: Theme.of(context).textTheme.titleLarge,
                    defVal: 30,
                    tabVal: 25,
                    mobVal: 17,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
