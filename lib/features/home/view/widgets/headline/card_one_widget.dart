import 'package:flutter/material.dart';
import 'package:web_portfolio/core/core.dart';
import 'package:web_portfolio/features/home/view/view.dart';

class CardOneWidget extends StatelessWidget {
  const CardOneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final padding = defaultPadding(context).value;
    return Padding(
      padding: EdgeInsets.all(padding ?? 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextResponsive(
            textColor: AppPalette.primaryGreen,
            text: Strings.headline,
            style: Theme.of(context).textTheme.headlineLarge,
            defVal: 50,
            tabVal: 35,
            mobVal: 25,
            maxLines: 3,
            textAlign: TextAlign.left,
          ),
          Gap(vertical: padding ?? 15),
          const CallToAction(),
        ],
      ),
    );
  }
}
