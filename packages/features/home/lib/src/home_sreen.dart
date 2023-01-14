import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'sections/sections.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const ColoredBox(color: AppPalette.primaryGreen),
          ListView(
            padding: EdgeInsets.all(defaultPadding(context).value),
            children: const [
              Headline(),
              TitleSection(title: 'Portfolio'),
              Content(),
              TitleSection(title: 'Certificate'),
              Certificate(),
            ],
          ),
        ],
      ),
    );
  }
}
