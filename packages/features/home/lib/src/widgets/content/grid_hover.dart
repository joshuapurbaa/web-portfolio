import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../data/portfolio_path_model.dart';
import '../widgets.dart';

class GridHover extends StatelessWidget {
  const GridHover({
    Key? key,
    required this.portfolio,
  }) : super(key: key);

  final PortfolioPath portfolio;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => DialogView(
            portfolio: portfolio,
          ),
        );
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: GlassMorphism(
          heightGlass: double.infinity,
          startGradient: 0.2,
          endGradient: 0.1,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextResponsive(
                textColor: AppPalette.primaryGreen,
                text: portfolio.name,
                style: Theme.of(context).textTheme.titleLarge,
                defVal: 50,
                tabVal: 45,
                mobVal: 30,
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              Icon(
                Icons.open_in_full_rounded,
                size: iconSize(context).value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
