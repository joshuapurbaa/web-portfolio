import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../widgets.dart';

class CardOneWidget extends StatelessWidget {
  const CardOneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding(context).value),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          Gaps(vertical: defaultPadding(context).value),
          const CallToAction(),
        ],
      ),
    );
  }
}
