import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class HeadlineCardTwo extends StatelessWidget {
  const HeadlineCardTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expanded(context).value,
      child: GlassMorphism(
        heightGlass: cardHeadline(context).value,
        startGradient: 0.9,
        endGradient: 0.5,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        child: const Image(
          image: AssetImage(
            'assets/photo.png',
            package: 'home',
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
