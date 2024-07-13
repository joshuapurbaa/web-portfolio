import 'package:flutter/material.dart';
import 'package:web_portfolio/core/core.dart';
import 'package:web_portfolio/features/home/view/view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = defaultPadding(context).value;
    return Scaffold(
      backgroundColor: AppPalette.primaryGreen,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: ListView(
              primary: true,
              padding: EdgeInsets.all(padding ?? 15),
              children: const [
                Headline(),
                TitleSection(title: 'Portfolio'),
                Content(),
                TitleSection(title: 'Certificate'),
                Certificate(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
