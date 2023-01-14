import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/providers/home_provider.dart';
import 'package:home/src/sections/headline.dart';
import 'package:provider/provider.dart';

import 'sections/content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            const ColoredBox(color: AppPalette.primaryGreen),
            ListView(
              padding: EdgeInsets.all(defaultPadding(context).value),
              children: [
                const Headline(),
                SizedBox(
                  height: defaultPadding(context).value,
                ),
                const Content(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
